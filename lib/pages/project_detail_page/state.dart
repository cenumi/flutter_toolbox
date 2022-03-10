part of 'page.dart';

final _viewModelProvider = StateNotifierProvider.autoDispose<_ViewModel, _ProjectDetailState>(
  (ref) => _ViewModel(ref.read),
);

@freezed
class _ProjectDetailState with _$_ProjectDetailState {
  const factory _ProjectDetailState({
    Pubspec? pubspec,
    DateTime? lastUpdateTime,
  }) = __ProjectDetailState;

  const _ProjectDetailState._();
}

class _ViewModel extends StateNotifier<_ProjectDetailState> {
  _ViewModel(Reader read)
      : _pubService = read(pubServiceProvider),
        _globals = read(globalsProvider),
        _localStorageService = read(localStorageServiceProvider),
        super(const _ProjectDetailState());

  late String path;
  int? id;

  final PubService _pubService;
  final LocalStorageService _localStorageService;
  final GlobalService _globals;

  File? yamlFile;
  DateTime? lastUpdateTime;

  Future<void> init(String path, int? id) async {
    this.path = path;
    this.id = id;
    yamlFile = File('$path${Platform.pathSeparator}pubspec.yaml');
    await load();
    await fetchUpdates();
  }

  Future<void> load() async {
    final yaml = await yamlFile!.readAsString();
    final pubspec = Pubspec.parse(yaml);
    _localStorageService.db.writeTxn((db) async {
      await db.projects.put(
        Project(id: id, path: path, name: pubspec.name, description: pubspec.description ?? ''),
        replaceOnConflict: true,
      );
    });
    state = state.copyWith(pubspec: pubspec);
  }

  Future<void> fetchUpdates({List<String>? names, DateTime? updateTime}) async {
    if (state.pubspec == null) return;

    final versions = <DependencyVersion>[];
    final errorList = <String>[];

    final toUpdate = names ??
        [
          ...state.pubspec!.dependencies.entries.where((e) => e.value is HostedDependency).map((e) => e.key),
          ...state.pubspec!.devDependencies.entries.where((e) => e.value is HostedDependency).map((e) => e.key),
        ];

    lastUpdateTime = updateTime ?? DateTime.now();

    await Future.wait([for (final name in toUpdate) _fetchVersion(name, versions, errorList)]);

    state = state.copyWith(lastUpdateTime: lastUpdateTime);

    await _localStorageService.db.writeTxn((db) async {
      db.dependencyVersions.putAll(versions, replaceOnConflict: true);
    });

    if (errorList.isNotEmpty) {
      showSnackBar(
        '$errorList Fetch Error',
        action: SnackBarAction(label: 'Retry Failed', onPressed: () => fetchUpdates(names: errorList)),
      );
    }
  }

  Future<void> _fetchVersion(String name, List<DependencyVersion> versions, List<String> errorList) async {
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
            updateTime: lastUpdateTime!,
          ),
        );
      }
    } catch (e) {
      errorList.add(name);
    }
  }

  Future<void> editDependency(String name, String version, {required bool isDevDependency}) async {
    try {
      final editor = YamlEditor(await yamlFile!.readAsString());
      editor.update([if (isDevDependency) 'dev_dependencies' else 'dependencies', name], version);
      yamlFile!.writeAsString(editor.toString());
      state = state.copyWith(pubspec: Pubspec.parse(editor.toString()));
    } catch (e) {
      showSnackBar(e.toString());
    }
  }

  void showSnackBar(String text, {SnackBarAction? action}) {
    _globals.scaffoldMessenger.showSnackBar(
      SnackBar(content: Text(text), duration: const Duration(seconds: 30), action: action),
    );
  }
}
