import 'dart:convert';

class ResAuthPostLoginDTO {
  final String accessJwt;
  final String refreshJwt;

  ResAuthPostLoginDTO._({required this.accessJwt, required this.refreshJwt});

  factory ResAuthPostLoginDTO.fromMap(Map<String, dynamic> jsonMap) {
    return ResAuthPostLoginDTO._(
      accessJwt: jsonMap['accessJwt'],
      refreshJwt: jsonMap['refreshJwt'],
    );
  }

  factory ResAuthPostLoginDTO.fromJson(String json) {
    return ResAuthPostLoginDTO.fromMap(jsonDecode(json));
  }
}
