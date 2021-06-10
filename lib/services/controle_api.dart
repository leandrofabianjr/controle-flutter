import 'dart:convert';

import 'package:controle_app/config/http_client.dart';
import 'package:controle_app/models/failure.dart';
import 'package:controle_app/models/token.dart';
import 'package:controle_app/services/local_data.dart';

class ControleApi {
  static Future<Token> login({
    required String username,
    required String password,
  }) async {
    final url = controleApiUri('/jwt/token');
    final headers = defaultHeaders();
    final body = {
      'username': username,
      'password': password,
    };
    final response = await httpClient.post(
      url,
      headers: headers,
      body: jsonEncode(body),
    );

    switch (response.statusCode) {
      case 201:
        final json = jsonDecodeUtf8(response.bodyBytes);
        return Token.fromJson(json);
      default:
        throw Failure.fromJson(jsonDecodeUtf8(response.bodyBytes));
    }
  }

  static Future<bool> checkToken() async {
    final localData = await LocalData().build();
    final token = localData.token;

    if (token == null) {
      throw UnauthorizedFailure();
    }

    final url = controleApiUri('/jwt/check');
    final headers = defaultHeaders(token: token);
    final response = await httpClient.post(url, headers: headers);

    switch (response.statusCode) {
      case 200:
        return true;
      default:
        throw Failure.fromJson(jsonDecodeUtf8(response.bodyBytes));
    }
  }
}
