import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_toolbox/core/meta.dart';
import 'package:flutter_toolbox/models/pub_models.dart';
import 'package:flutter_toolbox/services/http_service.dart';

part 'pub_service.chopper.dart';

final pubServiceProvider = Provider(
  (ref) {
    final client = PubHttpClient(
      ref.read,
      {PubVersions: PubVersions.fromJson},
    );
    return PubService.create(client.client);
  },
);

@ChopperApi()
abstract class PubService extends ChopperService {
  PubService();

  factory PubService.create(ChopperClient client) => _$PubService(client);

  @Get(path: '/packages/{name}.json')
  Future<Response<PubVersions>> getVersions(@Path() String name);
}
