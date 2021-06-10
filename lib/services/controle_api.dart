import 'dart:convert';

import 'package:controle_app/config/http_client.dart';
import 'package:controle_app/models/failure.dart';
import 'package:controle_app/models/token.dart';

class ControleApi {
  static Future<Token> login({
    required String username,
    required String password,
  }) async {
    final url = controleApiUri('/login/jwt');
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
}
