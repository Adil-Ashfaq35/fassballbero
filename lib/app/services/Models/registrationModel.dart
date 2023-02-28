
import 'dart:convert';

UserRegisterModel userRegisterModelFromJson(String str) => UserRegisterModel.fromJson(json.decode(str));

String userRegisterModelToJson(UserRegisterModel data) => json.encode(data.toJson());

class UserRegisterModel {
  UserRegisterModel({
    required this.user,
    required this.tokens,
  });

  User user;
  Tokens tokens;

  factory UserRegisterModel.fromJson(Map<String, dynamic> json) => UserRegisterModel(
    user: User.fromJson(json["user"]),
    tokens: Tokens.fromJson(json["tokens"]),
  );

  Map<String, dynamic> toJson() => {
    "user": user.toJson(),
    "tokens": tokens.toJson(),
  };
}

class Tokens {
  Tokens({
    required this.access,
    required this.refresh,
  });

  Access access;
  Access refresh;

  factory Tokens.fromJson(Map<String, dynamic> json) => Tokens(
    access: Access.fromJson(json["access"]),
    refresh: Access.fromJson(json["refresh"]),
  );

  Map<String, dynamic> toJson() => {
    "access": access.toJson(),
    "refresh": refresh.toJson(),
  };
}

class Access {
  Access({
    required this.token,
    required this.expires,
  });

  String token;
  DateTime expires;

  factory Access.fromJson(Map<String, dynamic> json) => Access(
    token: json["token"],
    expires: DateTime.parse(json["expires"]),
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "expires": expires.toIso8601String(),
  };
}

class User {
  User({
    required this.name,
    required this.email,
    required this.role,
    required this.isEmailVerified,
    required this.phone,
    required this.address,
    this.profilePic,
    this.userId,
    required this.source,
    required this.isBlock,
    required this.id,
  });

  String name;
  String email;
  String role;
  bool isEmailVerified;
  String phone;
  String address;
  dynamic profilePic;
  dynamic userId;
  String source;
  bool isBlock;
  String id;

  factory User.fromJson(Map<String, dynamic> json) => User(
    name: json["name"],
    email: json["email"],
    role: json["role"],
    isEmailVerified: json["isEmailVerified"],
    phone: json["phone"],
    address: json["address"],
    profilePic: json["profilePic"],
    userId: json["userId"],
    source: json["source"],
    isBlock: json["isBlock"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "role": role,
    "isEmailVerified": isEmailVerified,
    "phone": phone,
    "address": address,
    "profilePic": profilePic,
    "userId": userId,
    "source": source,
    "isBlock": isBlock,
    "id": id,
  };
}
