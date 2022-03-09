part of 'page.dart';

class _DependencyListView extends StatelessWidget {
  const _DependencyListView({Key? key, required this.dependencies, required this.isDevDependencies}) : super(key: key);

  final Map<String, Dependency>? dependencies;
  final bool isDevDependencies;

  @override
  Widget build(BuildContext context) {
    if (dependencies == null) return const CircularProgressIndicator();

    if (dependencies!.isEmpty) return const Center(child: Text('There is nothing here'));

    return ListView.builder(
      itemBuilder: (context, index) {
        final item = dependencies!.entries.elementAt(index);
        final name = item.key;
        final dependency = item.value;

        if (dependency is HostedDependency) {
          return _HostedDependencyItem(name: name, dependency: dependency, isDevDependency: isDevDependencies);
        }

        return _OtherDependencyItem(name: name, dependency: dependency, isDevDependency: isDevDependencies);
      },
      itemCount: dependencies!.length,
    );
  }
}

class _HostedDependencyItem extends ConsumerWidget {
  const _HostedDependencyItem({Key? key, required this.name, required this.dependency, required this.isDevDependency})
      : super(key: key);

  final String name;
  final HostedDependency dependency;
  final bool isDevDependency;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.read(localStorageServiceProvider).db.dependencyVersions.where().nameEqualTo(name).limit(1);
    return StreamBuilder<List<DependencyVersion>>(
      stream: query.watch(initialReturn: true),
      builder: (context, snapshot) {
        final latest = snapshot.data?.firstOrNull;

        final depVersion = dependency.version;

        final Version version;

        if (depVersion is VersionRange) {
          version = depVersion.min ?? depVersion.max!;
        } else if (depVersion is Version) {
          version = depVersion;
        } else {
          version = Version.none;
        }

        final subtitleWidgets = <Widget>[];
        final trailingWidgets = <Widget>[];

        if (latest != null) {
          final stableAvailableText = Text('${latest.stableVersion} available  ');
          final preReleaseAvailableText = Text('${latest.preReleaseVersion} available');

          final updateStableIconButton = IconButton(
            onPressed: () => ref
                .read(_viewModelProvider.notifier)
                .editDependency(name, '^${latest.stableVersion}', isDevDependency: isDevDependency),
            tooltip: 'Update to latest stable ${latest.stableVersion}',
            icon: const Icon(Icons.arrow_circle_up),
          );

          final updatePreReleaseIconButton = IconButton(
            onPressed: () => ref
                .read(_viewModelProvider.notifier)
                .editDependency(name, '^${latest.preReleaseVersion}', isDevDependency: isDevDependency),
            tooltip: 'Update to latest pre release ${latest.preReleaseVersion}',
            icon: const Icon(Icons.arrow_circle_up),
          );

          if (version == latest.stable) {
            subtitleWidgets.add(const Text('latest stable  '));
          } else if (version < latest.stable) {
            subtitleWidgets.add(stableAvailableText);
            trailingWidgets.add(updateStableIconButton);
          }

          if (version == latest.preRelease) {
            subtitleWidgets.add(const Text('latest pre release'));
          } else if (version < latest.preRelease && latest.preReleasing) {
            subtitleWidgets.add(preReleaseAvailableText);
            trailingWidgets.add(updatePreReleaseIconButton);
          }
        } else {
          subtitleWidgets.add(const Text('unknown'));
        }

        return ListTile(
          title: Text('$name: ${dependency.version}'),
          subtitle: Row(children: subtitleWidgets),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...trailingWidgets,
              IconButton(
                onPressed: () {
                  final url = ref.read(appServiceProvider).pubBaseURL;
                  launch('$url/packages/$name');
                },
                tooltip: 'Open in Pub',
                icon: const Icon(Icons.open_in_new),
              )
            ],
          ),
        );
      },
    );
  }
}

class _OtherDependencyItem extends ConsumerWidget {
  const _OtherDependencyItem({Key? key, required this.name, required this.dependency, required this.isDevDependency})
      : super(key: key);

  final String name;
  final Dependency dependency;
  final bool isDevDependency;

  void openInBrowser(BuildContext context, WidgetRef ref) {
    if (dependency is HostedDependency) {
      final url = ref.read(appServiceProvider).pubBaseURL;
      launch('$url/packages/$name');
      return;
    }
    if (dependency is GitDependency) {
      launch((dependency as GitDependency).url.toString());
      return;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(name),
      subtitle: Text(dependency.toString()),
      trailing: dependency is! SdkDependency
          ? IconButton(onPressed: () => openInBrowser(context, ref), icon: const Icon(Icons.open_in_new))
          : null,
    );
  }
}
