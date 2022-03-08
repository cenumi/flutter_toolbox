import 'dart:io';

import 'package:flutter_toolbox/core/meta.dart';
import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/core/services.dart';
import 'package:flutter_toolbox/services/local_storage_service.dart';
import 'package:process/process.dart';

part 'app_service.freezed.dart';

@freezed
class AppServiceData with _$AppServiceData {
  const factory AppServiceData({
    String? pubBaseURL,
    String? flutterPath,
  }) = _AppServiceData;

  static const defaultPubUrl = 'https://pub.dartlang.org';
}

class AppService extends StateNotifier<AppServiceData> {
  AppService(Reader read)
      : _localStorageService = read(localStorageServiceProvider),
        super(const AppServiceData()) {
    _load();
  }

  final LocalStorageService _localStorageService;

  final _pm = const LocalProcessManager();

  Future<void> _load() async {
    final sp = await _localStorageService.sp;
    state = state.copyWith.call(
      flutterPath: sp.getString('flutterPath'),
      pubBaseURL: sp.getString('pubUrl') ?? AppServiceData.defaultPubUrl,
    );
  }

  Future<bool> changeFlutterPath(String path) async {
    final effectivePath = '$path${Platform.pathSeparator}bin${Platform.pathSeparator}flutter';

    if (!_pm.canRun(effectivePath)) return false;

    state = state.copyWith.call(flutterPath: effectivePath);
    _localStorageService.saveString('flutterPath', effectivePath);
    return true;
  }

  void changePubURL(String url) {
    state = state.copyWith.call(pubBaseURL: url);
  }
}
