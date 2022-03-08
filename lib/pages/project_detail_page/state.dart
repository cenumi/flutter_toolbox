part of 'page.dart';

@freezed
class _ProjectDetailState with _$_ProjectDetailState {
  const factory _ProjectDetailState({
    Pubspec? pubspec,
  }) = __ProjectDetailState;

  const _ProjectDetailState._();
}

final _viewModelProvider = StateNotifierProvider.autoDispose<_ViewModel, _ProjectDetailState>(
  (ref) => _ViewModel(ref.read),
);

class _ViewModel extends StateNotifier<_ProjectDetailState> {
  _ViewModel(Reader read)
      : _pubService = read(pubServiceProvider),
        _globals = read(globalsProvider),
        _localStorageService = read(localStorageServiceProvider),
        super(const _ProjectDetailState());

  String? path;

  final PubService _pubService;
  final LocalStorageService _localStorageService;
  final GlobalService _globals;

  File? yamlFile;

  Future<void> init(String path) async {
    this.path = path;
    yamlFile = File('$path${Platform.pathSeparator}pubspec.yaml');
    await load();
    await fetchUpdates();
  }

  Future<void> load() async {
    final yaml = await yamlFile!.readAsString();
    state = state.copyWith.call(pubspec: Pubspec.parse(yaml));
  }

  Future<void> fetchUpdates() async {
    if (state.pubspec == null) return;

    final versions = <DependencyVersion>[];

    await Future.wait([
      for (final entry in state.pubspec!.dependencies.entries) _fetchVersion(entry.key, entry.value, versions),
      for (final entry in state.pubspec!.devDependencies.entries) _fetchVersion(entry.key, entry.value, versions),
    ]);

    await _localStorageService.db.writeTxn((db) async {
      await db.dependencyVersions.putAll(versions, replaceOnConflict: true);
    });
  }

  Future<void> _fetchVersion(
    String name,
    Dependency dependency,
    List<DependencyVersion> versions,
  ) async {
    if (dependency is! HostedDependency) return;
    try {
      final onlineVersions = (await _pubService.getVersions(name)).body;
      if (onlineVersions != null) {
        versions.add(
          DependencyVersion(
            name: name,
            stableVersion: onlineVersions.latestVersion,
            preReleaseVersion: onlineVersions.latestPreReleaseVersion,
            preReleasing:
                Version.parse(onlineVersions.latestVersion) < Version.parse(onlineVersions.latestPreReleaseVersion),
            updateTime: DateTime.now(),
          ),
        );
      }
    } catch (e) {
      showSnackBar(e.toString());
    }
  }

  Future<void> editDependency(String name, String version, {required bool isDevDependency}) async {
    try {
      final editor = YamlEditor(await yamlFile!.readAsString());
      editor.update([if (isDevDependency) 'dev_dependencies' else 'dependencies', name], version);
      yamlFile!.writeAsString(editor.toString());
      state = state.copyWith.call(pubspec: Pubspec.parse(editor.toString()));
    } catch (e) {
      showSnackBar(e.toString());
    }
  }

  void showSnackBar(String text) {
    _globals.scaffoldMessenger.showSnackBar(SnackBar(content: Text(text)));
  }
}
