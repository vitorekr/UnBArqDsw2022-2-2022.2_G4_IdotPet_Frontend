class Token {
  String accessToken;
  String tokenType;


  Token({
    required this.accessToken,
    required this.tokenType
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acessToken': accessToken,
      'tokenType': tokenType
    };
  }

  factory Token.fromMap(Map<String, dynamic> map) {
    return Token(
      accessToken: map['access_token'] as String,
      tokenType: map['token_type'] as String
    );
  }
}