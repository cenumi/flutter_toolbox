import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_toolbox/core/services.dart';
import 'package:flutter_toolbox/pages/index_page/page.dart';

void main() {
  runApp(const ToolboxApp());
}

class ToolboxApp extends StatelessWidget {
  const ToolboxApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Consumer(
        builder: (context, ref, _) {
          final globalService = ref.watch(globalsProvider);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Toolbox',
            scaffoldMessengerKey: globalService.scaffoldMessengerKey,
            navigatorKey: globalService.navigatorKey,
            supportedLocales: const [
              Locale('zh'),
              Locale('en'),
            ],
            localizationsDelegates: GlobalMaterialLocalizations.delegates,
            theme: ThemeData(useMaterial3: true),
            home: const IndexPage(),
          );
        },
      ),
    );
  }
}
