import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toolbox/core/meta.dart';
import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/domain/user_configs_provider.dart';
import 'package:flutter_toolbox/models/project_models.dart';
import 'package:flutter_toolbox/services/http_service.dart';
import 'package:flutter_toolbox/services/local_storage_service.dart';
import 'package:url_launcher/url_launcher_string.dart';

part 'page.freezed.dart';
part 'state.dart';
part 'view_common.dart';
part 'view_dependency.dart';
part 'view_dev_dependency.dart';
part 'view_version.dart';

class ProjectDetailPage extends ConsumerStatefulWidget {
  const ProjectDetailPage({Key? key, required this.path, this.id}) : super(key: key);

  final String path;
  final int? id;

  @override
  ConsumerState<ProjectDetailPage> createState() => _ProjectDetailPageState();
}

class _ProjectDetailPageState extends ConsumerState<ProjectDetailPage> {
  int index = 0;

  final views = [
    const _VersionView(),
    const _DependenciesList(),
    const _DevDependenciesList(),
  ];

  @override
  void initState() {
    super.initState();
    ref.read(_viewModelProvider.notifier).init(widget.path, widget.id);
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(_viewModelProvider.notifier);

    ref.listen<List<String>>(
      _viewModelProvider.select((value) => value.errorMessages),
      (previous, next) {
        if (next.isNotEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('$next fetch error!'),
              duration: const Duration(seconds: 5),
              action: SnackBarAction(
                label: 'Retry Failed',
                onPressed: () => ref.read(_viewModelProvider.notifier).fetchUpdates(names: next),
              ),
            ),
          );
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.path.split(Platform.pathSeparator).last),
        actions: [
          IconButton(
            onPressed: () => launchUrlString('file://${widget.path}${Platform.pathSeparator}pubspec.yaml'),
            tooltip: 'Open in default editor',
            icon: const Icon(Icons.code),
          ),
          IconButton(
            onPressed: () => ref.read(_viewModelProvider.notifier).load(),
            tooltip: 'Reload from disk',
            icon: const Icon(Icons.refresh),
          ),
          Consumer(
            builder: (context, ref, _) {
              final lastUpdateTime = ref.watch(_viewModelProvider.select((value) => value.lastUpdateTime));
              return IconButton(
                onPressed: () => ref.read(_viewModelProvider.notifier).fetchUpdates(),
                tooltip: 'Fetch versions from Pub, updated at $lastUpdateTime',
                icon: const Icon(Icons.cloud_download),
              );
            },
          ),
        ],
      ),
      body: Row(
        children: [
          NavigationRail(
            destinations: const [
              NavigationRailDestination(icon: Icon(Icons.onetwothree), label: Text('Version')),
              NavigationRailDestination(icon: Icon(Icons.topic), label: Text('Dependencies')),
              NavigationRailDestination(icon: Icon(Icons.logo_dev), label: Text('Dev Dependencies')),
            ],
            selectedIndex: index,
            extended: true,
            onDestinationSelected: (index) => setState(() => this.index = index),
          ),
          const VerticalDivider(width: 1),
          Expanded(child: AnimatedSwitcher(duration: const Duration(milliseconds: 300), child: views[index]))
        ],
      ),
    );
  }
}
