part of 'page.dart';

class _DevDependenciesList extends ConsumerWidget {
  const _DevDependenciesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(_viewModelProvider.select((value) => value?.devDependencies));

    return _DependencyListView(dependencies: list, isDevDependencies: true);
  }
}
