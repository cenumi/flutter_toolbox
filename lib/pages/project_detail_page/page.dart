import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_toolbox/core/meta.dart';
import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/models/project_models.dart';
import 'package:flutter_toolbox/services/app_service.dart';
import 'package:flutter_toolbox/services/global_service.dart';
import 'package:flutter_toolbox/services/local_storage_service.dart';
import 'package:flutter_toolbox/services/pub_service.dart';


part 'state.dart';

part 'page.freezed.dart';

part 'view_dependency.dart';

part 'view_dev_dependency.dart';

part 'view_update_able.dart';

part 'view_common.dart';

class ProjectDetailPage extends ConsumerStatefulWidget {
  const ProjectDetailPage({Key? key, required this.path}) : super(key: key);

  final String path;

  @override
  _ProjectDetailPageState createState() => _ProjectDetailPageState();
}

class _ProjectDetailPageState extends ConsumerState<ProjectDetailPage> {
  int index = 0;

  final views = [
    const _DependenciesList(),
    const _DevDependenciesList(),
  ];

  @override
  void initState() {
    super.initState();
    ref.read(_viewModelProvider.notifier).init(widget.path);
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(_viewModelProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.path.split(Platform.pathSeparator).last),
        actions: [
          IconButton(
            onPressed: () => launch('file://${widget.path}${Platform.pathSeparator}pubspec.yaml'),
            icon: const Icon(Icons.code),
          ),
          IconButton(
            onPressed: () => ref.read(_viewModelProvider.notifier).fetchUpdates(),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Row(
        children: [
          NavigationRail(
            destinations: const [
              NavigationRailDestination(icon: Icon(Icons.topic), label: Text('Dependencies')),
              NavigationRailDestination(icon: Icon(Icons.logo_dev), label: Text('Dev Dependencies')),
            ],
            selectedIndex: index,
            useIndicator: false,
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
