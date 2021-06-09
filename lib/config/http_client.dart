import 'dart:convert';

import 'package:http/http.dart';
import 'package:http_interceptor/http_client_with_interceptor.dart';

Map<String, String> defaultHeaders() {
  final String? token = '';
  Map<String, String> headers = {
    "Accept": "application/json",
    "Content-Type": "application/json"
  };
  if (token != null && token != '') {
    headers['Authorization'] = 'Bearer $token';
  }
  return headers;
}

String controleUri(String path, {Map<String, dynamic>? params}) {
  return Uri(
    scheme: 'http',
    host: 'localhost',
    path: path,
    queryParameters: params,
  ).toString();
}

final Client oticketHttpClient = HttpClientWithInterceptor.build(
  interceptors: [
    // HttpLoggingInterceptor(),
  ],
  requestTimeout: Duration(seconds: 5),
  // badCertificateCallback: (cert, host, port) => true,
);

// dynamic jsonDecodeUtf8(
//   List<int> codeUnits, {
//   Object reviver(Object key, Object value),
// }) =>
//     json.decode(
//       utf8.decode(codeUnits),
//       reviver: reviver,
//     );
