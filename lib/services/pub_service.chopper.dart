// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pub_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$PubService extends PubService {
  _$PubService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PubService;

  @override
  Future<Response<PubVersions>> getVersions(String name) {
    final $url = '/packages/${name}.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<PubVersions, PubVersions>($request);
  }
}
