part of 'page.dart';

@freezed
class _ProjectDetailState with _$_ProjectDetailState {
  const factory _ProjectDetailState({
    Pubspec? pubspec,
    Map<String, Dependency>? shouldUpdateDependencies,
    Map<String, String>? updateAbleStableVersion,
    Map<String, String>? updateAblePreReleaseVersion,
  }) = __ProjectDetailState;

  const _ProjectDetailState._();
}

final _viewModelProvider = StateNotifierProvider.autoDispose<_ViewModel, _ProjectDetailState>(
  (ref) => _ViewModel(ref.read),
);

class _ViewModel extends StateNotifier<_ProjectDetailState> {
  _ViewModel(Reader read)
      : _pubService = read(pubServiceProvider),
        super(const _ProjectDetailState());

  String? path;

  final PubService _pubService;

  File? yamlFile;

  Future<void> load(String path) async {
    this.path = path;
    yamlFile = File('$path${Platform.pathSeparator}pubspec.yaml');
    final yaml = await yamlFile!.readAsString();
    state = state.copyWith.call(pubspec: Pubspec.parse(yaml));
    await fetchUpdates();
  }

  Future<void> fetchUpdates() async {
    if (state.pubspec == null) return;

    await Future.wait([
      for (final dependencyEntry in state.pubspec!.dependencies.entries)
        _fetchVersion(dependencyEntry.key, dependencyEntry.value),
    ]);

    if (state.shouldUpdateDependencies == null) {
      state = state.copyWith.call(shouldUpdateDependencies: {});
    }
  }

  Future<void> _fetchVersion(String name, Dependency dependency) async {
    if (dependency is! HostedDependency) return;
    try {
      final onlineVersions = (await _pubService.getVersions(name)).body;
      if (onlineVersions != null) {
        final stableVersion = Version.parse(onlineVersions.latestVersion);
        final preReleaseVersion = Version.parse(onlineVersions.latestPreReleaseVersion);

        final dependencyVersion = dependency.version;

        Version? version;

        if (dependencyVersion is Version) {
          version = dependencyVersion;
        } else if (dependencyVersion is VersionRange) {
          version = dependencyVersion.min;
        }

        if (version != null) {
          final shouldUpdateDependencies = {...?state.shouldUpdateDependencies};
          final updateAbleStableVersion = {...?state.updateAbleStableVersion};
          final updateAblePreReleaseVersion = {...?state.updateAblePreReleaseVersion};

          if (stableVersion > version) {
            updateAbleStableVersion[name] = stableVersion.toString();
          }
          if (preReleaseVersion > stableVersion && preReleaseVersion > version) {
            updateAblePreReleaseVersion[name] = preReleaseVersion.toString();
          }
          shouldUpdateDependencies[name] = dependency;

          state = state.copyWith.call(
            shouldUpdateDependencies: shouldUpdateDependencies,
            updateAbleStableVersion: updateAbleStableVersion,
            updateAblePreReleaseVersion: updateAblePreReleaseVersion,
          );
        }
      }
    } finally {}
  }
}
