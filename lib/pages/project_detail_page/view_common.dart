part of 'page.dart';

class _DependencyListView extends StatelessWidget {
  const _DependencyListView({Key? key, required this.dependencies}) : super(key: key);

  final Map<String, Dependency>? dependencies;

  @override
  Widget build(BuildContext context) {
    if (dependencies == null) return const CircularProgressIndicator();

    if (dependencies!.isEmpty) return const Center(child: Text('There is nothing here'));

    return ListView.builder(
      itemBuilder: (context, index) {
        final item = dependencies!.entries.elementAt(index);
        return _DependencyItem(name: item.key, dependency: item.value);
      },
      itemCount: dependencies!.length,
    );
  }
}

class _DependencyItem extends ConsumerWidget {
  const _DependencyItem({Key? key, required this.name, required this.dependency}) : super(key: key);

  final String name;
  final Dependency dependency;

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
    final updateAbleStableVersion =
        ref.watch(_viewModelProvider.select((value) => value.updateAbleStableVersion?[name]));

    final updateAblePreReleaseVersion =
        ref.watch(_viewModelProvider.select((value) => value.updateAblePreReleaseVersion?[name]));

    return ListTile(
      title: Text('$name:${dependency.toString().split(':').last}'),
      subtitle: Row(
        children: [
          if (updateAbleStableVersion != null) Text('$updateAbleStableVersion Available'),
          if (updateAbleStableVersion != null && updateAblePreReleaseVersion != null) const SizedBox(width: 16),
          if (updateAblePreReleaseVersion != null) Text('$updateAblePreReleaseVersion Available'),
          if (updateAbleStableVersion == null && updateAblePreReleaseVersion == null) const Text('latest')
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (updateAbleStableVersion != null)
            IconButton(
              onPressed: () {},
              tooltip: 'Update to latest stable $updateAbleStableVersion',
              icon: const Icon(Icons.arrow_circle_up),
            ),
          if (updateAblePreReleaseVersion != null)
            IconButton(
              onPressed: () {},
              tooltip: 'Update to latest pre release $updateAblePreReleaseVersion',
              icon: const Icon(Icons.arrow_circle_up),
            ),
          IconButton(
            onPressed: () => openInBrowser(context, ref),
            tooltip: 'Open in Pub',
            icon: const Icon(Icons.open_in_new),
          )
        ],
      ),
    );
  }
}
