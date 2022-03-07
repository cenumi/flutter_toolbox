import 'package:flutter/material.dart';
import 'package:flutter_toolbox/core/packages.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _Header(),
        Divider(height: 1),
        Expanded(child: _ProjectList()),
      ],
    );
  }
}

class _Header extends ConsumerWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Text('Projects', style: Theme.of(context).textTheme.headlineSmall),
          const Spacer(),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.create_new_folder),
            label: const Text('Add Project'),
          ),
        ],
      ),
    );
  }
}

class _ProjectList extends ConsumerWidget {
  const _ProjectList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Wrap(
      children: [],
    );
  }
}

class _ProjectListItem extends StatelessWidget {
  const _ProjectListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
