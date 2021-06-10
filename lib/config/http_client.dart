import 'dart:convert';

import 'package:controle_app/config/http_logging_interceptor.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_client_with_interceptor.dart';

Map<String, String> defaultHeaders({String? token}) {
  Map<String, String> headers = {
    "Accept": "application/json",
    "Content-Type": "application/json"
  };
  if (token != null) {
    headers['Authorization'] = 'Bearer $token';
  }
  return headers;
}

Uri controleApiUri(String path, {Map<String, dynamic>? params}) {
  return Uri(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: path,
    queryParameters: params,
  );
}

final Client httpClient = HttpClientWithInterceptor.build(
  interceptors: [
    HttpLoggingInterceptor(),
  ],
  requestTimeout: Duration(seconds: 5),
  // badCertificateCallback: (cert, host, port) => true,
);

dynamic jsonDecodeUtf8(List<int> codeUnits) {
  return json.decode(utf8.decode(codeUnits));
}
