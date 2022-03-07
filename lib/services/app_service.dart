import 'dart:io';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toolbox/core/meta.dart';
import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/core/services.dart';
import 'package:flutter_toolbox/services/global_service.dart';
import 'package:flutter_toolbox/services/local_storage_service.dart';
import 'package:process/process.dart';

part 'app_service.freezed.dart';

@freezed
class AppServiceData with _$AppServiceData {
  const factory AppServiceData({
    required String pubBaseUrl,
    String? flutterPath,
  }) = _AppServiceData;

  const AppServiceData._();
}

class AppService extends StateNotifier<AppServiceData> {
  AppService(Reader read)
      : _globals = read(globalsProvider),
        _localStorageService = read(localStorageServiceProvider),
        super(const AppServiceData(pubBaseUrl: 'https://pub.dartlang.org')) {
    load();
  }

  final GlobalService _globals;
  final LocalStorageService _localStorageService;

  final _pm = const LocalProcessManager();

  Future<void> load() async {
    final sp = await _localStorageService.sp;
    state = state.copyWith.call(
      flutterPath: sp.getString('flutterPath'),
    );
  }

  Future<void> setFlutterPath() async {
    final path = await getDirectoryPath();
    if (path == null) return;

    final effectivePath = '$path${Platform.pathSeparator}bin${Platform.pathSeparator}flutter';

    if (!_pm.canRun(effectivePath)) {
      showDialog(
        context: _globals.navigator.context,
        builder: (context) => AlertDialog(
          content: const Text('Wrong Flutter Path'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setFlutterPath();
              },
              child: const Text('RESELECT'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('CANCEL'),
            ),
          ],
        ),
      );
      return;
    }
    state = state.copyWith.call(flutterPath: effectivePath);
    _localStorageService.saveString('flutterPath', effectivePath);
  }
}
