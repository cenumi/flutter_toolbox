part of 'page.dart';

class _DependenciesList extends ConsumerWidget {
  const _DependenciesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(_viewModelProvider.select((value) => value.pubspec?.dependencies));

    return _DependencyListView(dependencies: list, isDevDependencies: false);
  }
}
