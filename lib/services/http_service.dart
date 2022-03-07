import 'package:flutter_toolbox/core/meta.dart';

class HttpService {
  HttpService(this.baseUrl);

  final Map<Type, JsonFactory> factories = {};
  final String baseUrl;
  late final client = ChopperClient(
    baseUrl: baseUrl,
    converter: JsonSerializableConverter(factories),
  );
}

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class JsonSerializableConverter extends JsonConverter {
  const JsonSerializableConverter(this.factories);

  final Map<Type, JsonFactory> factories;

  T? _decodeMap<T>(Map<String, dynamic> values) {
    /// Get jsonFactory using Type parameters
    /// if not found or invalid, throw error or return null
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      /// throw serializer not found error;
      return null;
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) => values.where((v) => v != null).map<T>((v) => _decode<T>(v) as T).toList();

  dynamic _decode<T>(dynamic entity) {
    if (entity is Iterable) return _decodeList<T>(entity);

    if (entity is Map<String, dynamic>) return _decodeMap<T>(entity);

    return entity;
  }

  @override
  Response<ResultType> convertResponse<ResultType, Item>(Response response) {
    // use [JsonConverter] to decode json
    final jsonRes = super.convertResponse(response);

    return jsonRes.copyWith<ResultType>(body: _decode<ResultType>(jsonRes.body) as ResultType);
  }

// Response convertError<ResultType, Item>(Response response) {
//   // use [JsonConverter] to decode json
//   final jsonRes = super.convertError(response);
//
//   return jsonRes.copyWith<ResourceError>(
//     body: ResourceError.fromJsonFactory(jsonRes.body),
//   );
// }
}
