class Failure implements Exception {
  String? message;

  Failure({this.message});

  factory Failure.fromJson(dynamic json) {
    if (json.containsKey('message')) {
      return Failure(message: json['message'].toString());
    }
    return Failure.unknownError();
  }

  factory Failure.unknownError() {
    return Failure(message: 'Houve um problema inesperado');
  }
}

class UnauthorizedFailure extends Failure {}
