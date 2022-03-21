// To parse this JSON data, do
//
//     final info = infoFromJson(jsonString);

import 'dart:convert';

Info infoFromJson(String str) => Info.fromJson(json.decode(str));

String infoToJson(Info data) => json.encode(data.toJson());

class Info {
  Info({
    required this.username,
    required this.password,
    required this.firebase,
    required this.version,
    required this.tipoterminal,
  });

  String username;
  String password;
  String firebase;
  String version;
  String tipoterminal;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        username: json["username"],
        password: json["password"],
        firebase: json["firebase"],
        version: json["version"],
        tipoterminal: json["tipoterminal"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "firebase": firebase,
        "version": version,
        "tipoterminal": tipoterminal,
      };
}
