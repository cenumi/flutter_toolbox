import 'package:flutter_toolbox/core/meta.dart';
import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/domain/user_configs_provider.dart';
import 'package:flutter_toolbox/models/flutter_model.dart';
import 'package:flutter_toolbox/services/flutter_service.dart';

part 'flutter_info_provider.freezed.dart';

final flutterInfoProvider = StateNotifierProvider<FlutterInfoController, FlutterInfo>((ref) {
  final path = ref.watch(userConfigsProvider.select((value) => value.flutterPath));
  final flutterService = ref.watch(flutterServiceProvider);

  return FlutterInfoController(flutterService, path);
});

@freezed
class FlutterInfo with _$FlutterInfo {
  const factory FlutterInfo({
    @Default(AsyncLoading()) AsyncValue<FlutterVersionInfo> versionInfo,
    @Default(AsyncLoading()) AsyncValue<FlutterSettingsInfo> settingsInfo,
  }) = _FlutterInfo;
}

class FlutterInfoController extends StateNotifier<FlutterInfo> {
  FlutterInfoController(this._flutterService, this._flutterPath) : super(const FlutterInfo()) {
    fetchFlutterInfo();
    fetchFlutterSettings();
  }
  final FlutterService _flutterService;
  final String? _flutterPath;

  bool _pathNotValid() => _flutterPath == null || _flutterPath!.isEmpty;

  Future<void> fetchFlutterInfo() async {
    if (_pathNotValid()) return;
    final info = await AsyncValue.guard(() => _flutterService.getFlutterInfo(_flutterPath!));
    state = state.copyWith(versionInfo: info);
  }

  Future<void> fetchFlutterSettings() async {
    if (_pathNotValid()) return;
    final info = await AsyncValue.guard(() => _flutterService.getFlutterSettings(_flutterPath!));
    state = state.copyWith(settingsInfo: info);
  }

  Future<void> changePlatformSettings(SupportedPlatform platform, {required bool enabled}) async {
    if (_pathNotValid()) return;
    await AsyncValue.guard(() => _flutterService.changePlatformSettings(_flutterPath!, platform, enabled: enabled));
  }
}
