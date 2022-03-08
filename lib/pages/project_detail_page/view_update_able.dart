part of 'page.dart';

class _UpdateAbleDependenciesList extends ConsumerWidget {
  const _UpdateAbleDependenciesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(_viewModelProvider.select((value) => value.shouldUpdateDependencies));

    return _DependencyListView(dependencies: list);
  }
}
