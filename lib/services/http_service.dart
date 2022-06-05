import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/domain/user_configs_provider.dart';
import 'package:flutter_toolbox/models/pub_models.dart';

final pubServiceProvider = Provider((ref) {
  return PubService(ref.watch(userConfigsProvider.notifier));
});

class PubService extends DioForNative {
  PubService(UserConfigsController userConfigsController) : super(BaseOptions(headers: {})) {
    interceptors.add(PubUrlInterceptor(userConfigsController));
  }

  Future<PubVersions> getVersions(String name) async {
    final res = await get('/packages/$name.json');
    return PubVersions.fromJson(res.data as Map<String, dynamic>);
  }
}

class PubUrlInterceptor extends Interceptor {
  PubUrlInterceptor(this._userConfigsController);

  final UserConfigsController _userConfigsController;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options.copyWith(baseUrl: _userConfigsController.pubBaseURL));
  }
}
