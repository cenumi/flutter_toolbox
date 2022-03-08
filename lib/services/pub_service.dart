import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_toolbox/core/meta.dart';
import 'package:flutter_toolbox/models/pub_models.dart';
import 'package:flutter_toolbox/services/app_service.dart';
import 'package:flutter_toolbox/services/http_service.dart';

part 'pub_service.chopper.dart';

final pubServiceProvider = Provider(
  (ref) {
    final baseURL = ref.watch(appServiceProvider.select((value) => value.pubBaseURL));
    return PubService.create(HttpService(baseURL ?? ''));
  },
);

@ChopperApi()
abstract class PubService extends ChopperService {
  PubService();

  factory PubService.create(HttpService httpService) {
    httpService.factories.addAll({
      PubVersions: PubVersions.fromJson,
    });
    return _$PubService(httpService.client);
  }

  @Get(path: '/packages/{name}.json')
  Future<Response<PubVersions>> getVersions(@Path() String name);
}
