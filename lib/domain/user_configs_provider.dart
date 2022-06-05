import 'dart:io';

import 'package:flutter_toolbox/core/meta.dart';
import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/services/local_storage_service.dart';
import 'package:process/process.dart';

part 'user_configs_provider.freezed.dart';

final userConfigsProvider = StateNotifierProvider<UserConfigsController, UserConfigs>(
  (ref) => UserConfigsController(ref.watch(localStorageServiceProvider)),
);

@freezed
class UserConfigs with _$UserConfigs {
  const factory UserConfigs({
    @Default('https://pub.dartlang.org') String pubBaseURL,
    String? flutterPath,
  }) = _UserConfigs;
}

class UserConfigsController extends StateNotifier<UserConfigs> {
  UserConfigsController(this._localStorage) : super(const UserConfigs()) {
    _load();
  }

  final LocalStorageService _localStorage;

  final _pm = const LocalProcessManager();

  String get pubBaseURL => state.pubBaseURL;

  Future<void> _load() async {
    final sp = _localStorage.sp;

    state = UserConfigs(
      flutterPath: sp.getString('flutterPath') ?? state.flutterPath,
      pubBaseURL: sp.getString('pubUrl') ?? state.pubBaseURL,
    );
  }

  Future<bool> changeFlutterPath(String path) {
    final effectivePath = '$path${Platform.pathSeparator}bin${Platform.pathSeparator}flutter';
    if (!_pm.canRun(effectivePath)) throw 'Invalid Flutter path';

    state = state.copyWith.call(flutterPath: effectivePath);
    return _localStorage.saveString('flutterPath', effectivePath);
  }

  Future<void> changePubUrl(String url) {
    state = state.copyWith.call(pubBaseURL: url);
    return _localStorage.saveString('pubUrl', url);
  }
}
