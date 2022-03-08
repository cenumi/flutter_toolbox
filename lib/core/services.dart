import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/services/app_service.dart';
import 'package:flutter_toolbox/services/flutter_service.dart';
import 'package:flutter_toolbox/services/global_service.dart';
import 'package:flutter_toolbox/services/http_service.dart';
import 'package:flutter_toolbox/services/local_storage_service.dart';
import 'package:flutter_toolbox/services/pub_service.dart';

final localStorageServiceProvider = Provider((_) => LocalStorageService());

final globalsProvider = Provider((_) => GlobalService());

final appServiceProvider = StateNotifierProvider<AppService, AppServiceData>(
  (ref) => AppService(ref.read),
);

final flutterServiceProvider = StateNotifierProvider<FlutterService, FlutterServiceData>(
  (ref) {
    final flutterPath = ref.watch(appServiceProvider.select((value) => value.flutterPath));
    return FlutterService(ref.read, flutterPath);
  },
);

final pubServiceProvider = Provider(
  (ref) {
    final baseURL = ref.watch(appServiceProvider.select((value) => value.pubBaseURL));
    return PubService.create(HttpService(baseURL ?? ''));
  },
);
