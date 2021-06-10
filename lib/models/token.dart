class Token {
  String access;

  Token({required this.access});

  factory Token.fromJson(Map<String, dynamic> json) {
    return Token(access: json['access']);
  }
}
