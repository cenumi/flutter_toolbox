part of 'page.dart';

final _viewModelProvider = StateNotifierProvider.autoDispose<_ViewModel, Pubspec?>(
  (ref) => _ViewModel(ref.read),
);

class _ViewModel extends StateNotifier<Pubspec?> {
  _ViewModel(Reader read)
      : _pubService = read(pubServiceProvider),
        _globals = read(globalsProvider),
        _localStorageService = read(localStorageServiceProvider),
        super(null);

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
    state = pubspec;
  }

  Future<void> fetchUpdates() async {
    if (state == null) return;

    final versions = <DependencyVersion>[];
    final errorList = <String>[];

    lastUpdateTime = DateTime.now();

    await Future.wait([
      for (final entry in state!.dependencies.entries) _fetchVersion(entry.key, entry.value, versions, errorList),
      for (final entry in state!.devDependencies.entries) _fetchVersion(entry.key, entry.value, versions, errorList),
    ]);

    if (errorList.isNotEmpty) {
      showSnackBar('$errorList Fetch Error');
    }

    await _localStorageService.db.writeTxn((db) async {
      await db.dependencyVersions.putAll(versions, replaceOnConflict: true);
    });
  }

  Future<void> _fetchVersion(
    String name,
    Dependency dependency,
    List<DependencyVersion> versions,
    List<String> errorList,
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
      errorList.add(name);
    }
  }

  Future<void> editDependency(String name, String version, {required bool isDevDependency}) async {
    try {
      final editor = YamlEditor(await yamlFile!.readAsString());
      editor.update([if (isDevDependency) 'dev_dependencies' else 'dependencies', name], version);
      yamlFile!.writeAsString(editor.toString());
      state = Pubspec.parse(editor.toString());
    } catch (e) {
      showSnackBar(e.toString());
    }
  }

  void showSnackBar(String text) {
    _globals.scaffoldMessenger.showSnackBar(SnackBar(content: Text(text)));
  }
}
