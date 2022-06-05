import 'dart:io';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/models/project_models.dart';
import 'package:flutter_toolbox/pages/project_detail_page/page.dart';
import 'package:flutter_toolbox/services/local_storage_service.dart';
import 'package:process/process.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
    return StreamBuilder<List<Project>>(
      stream: ref.read(localStorageServiceProvider).db.projects.where().watch(initialReturn: true),
      builder: (context, snapshot) {
        if (snapshot.data?.isEmpty == true) {
          return const Center(child: Text('Nothing here'));
        }

        return SizedBox.expand(
          child: Wrap(
            children: [
              if (snapshot.hasData)
                for (final project in snapshot.data!) _ProjectListItem(project: project),
            ],
          ),
        );
      },
    );
  }
}

class _ProjectListItem extends ConsumerWidget {
  const _ProjectListItem({Key? key, required this.project}) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: 0.5,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ProjectDetailPage(path: project.path, id: project.id)),
          );
        },
        child: SizedBox(
          width: 300,
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Padding(padding: EdgeInsets.all(8), child: FlutterLogo()),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(project.name, style: Theme.of(context).textTheme.titleLarge),
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(height: 1),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(project.description, style: Theme.of(context).textTheme.bodySmall),
                ),
              ),
              const Divider(height: 1),
              Row(
                children: [
                  IconButton(
                    onPressed: () => launchUrlString('file://${project.path}'),
                    icon: const Icon(Icons.folder_open),
                    splashRadius: 24,
                  ),
                  IconButton(
                    onPressed: () {
                      const pm = LocalProcessManager();

                      if (pm.canRun('code')) {
                        pm.run(['code', project.path]);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Run install "code" command in shell in VSCode'),
                          ),
                        );
                      }
                    },
                    icon: const Icon(Icons.code),
                    splashRadius: 24,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      final db = ref.read(localStorageServiceProvider).db;
                      db.writeTxn((db) async {
                        db.projects.delete(project.id!);
                      });
                    },
                    icon: const Icon(Icons.delete),
                    splashRadius: 24,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
