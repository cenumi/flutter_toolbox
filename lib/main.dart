import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_toolbox/pages/index_page/page.dart';
import 'package:flutter_toolbox/services/global_service.dart';
import 'package:flutter_toolbox/services/local_storage_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageService.init();
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
            theme: ThemeData(
              useMaterial3: true,
              appBarTheme: const AppBarTheme(
                elevation: 0.5,
                iconTheme: IconThemeData(color: Colors.black),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              snackBarTheme: const SnackBarThemeData(behavior: SnackBarBehavior.floating)
            ),
            home: const IndexPage(),
          );
        },
      ),
    );
  }
}
