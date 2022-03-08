import 'dart:io';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/pages/project_detail_page/page.dart';

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

  Future<void> openProject(BuildContext context, WidgetRef ref) async {
    final navigator = Navigator.of(context);
    final path = await getDirectoryPath();
    if (path == null) return;

    if (await File('$path${Platform.pathSeparator}pubspec.yaml').exists()) {
      await navigator.push(MaterialPageRoute(builder: (context) => ProjectDetailPage(path: path)));
    } else {
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: const Text('Invalid Flutter Project\npubspec.yaml not found.'),
          actions: [TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Confirm'))],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Text('Projects', style: Theme.of(context).textTheme.headlineSmall),
          const Spacer(),
          OutlinedButton.icon(
            onPressed: () => openProject(context, ref),
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
