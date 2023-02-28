import 'dart:convert';

UserErrorModel userRegisterModelFromJson(String str) => UserErrorModel.fromJson(json.decode(str));

String userRegisterModelToJson(UserErrorModel data) => json.encode(data.toJson());

class UserErrorModel {
  UserErrorModel({
    required this.code,
    required this.message,
  });

  int code;
  String message;

  factory UserErrorModel.fromJson(Map<String, dynamic> json) => UserErrorModel(
    code: json["code"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "message": message,
  };
}