import 'package:flutter/material.dart';
import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/pages/flutter_settings_page/page.dart';
import 'package:flutter_toolbox/pages/projects_page/page.dart';

class IndexPage extends ConsumerStatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends ConsumerState<IndexPage> {
  int index = 0;

  final pages = <Widget>[
    const ProjectsPage(),
    const FlutterSettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            useIndicator: false,
            backgroundColor: const Color.fromARGB(255, 239, 239, 239),
            destinations: const [
              NavigationRailDestination(icon: Icon(Icons.folder), label: Text('Flutter')),
              NavigationRailDestination(icon: Icon(Icons.settings), label: Text('Flutter')),
            ],
            selectedIndex: index,
            onDestinationSelected: (index) => setState(() => this.index = index),
          ),
          const VerticalDivider(width: 1),
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: pages[index],
            ),
          )
        ],
      ),
    );
  }
}
