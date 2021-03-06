// To parse this JSON data, do
//
//     final authUserResponse = authUserResponseFromJson(jsonString);

import 'dart:convert';

AuthUserResponse authUserResponseFromJson(String str) =>
    AuthUserResponse.fromJson(json.decode(str));

String authUserResponseToJson(AuthUserResponse data) =>
    json.encode(data.toJson());

class AuthUserResponse {
  AuthUserResponse({
    required this.authUserResponse,
  });

  final AuthUserResponseClass? authUserResponse;

  factory AuthUserResponse.fromJson(Map<String, dynamic> json) =>
      AuthUserResponse(
        authUserResponse: json["authUserResponse"] == null
            ? null
            : AuthUserResponseClass.fromJson(json["authUserResponse"]),
      );

  Map<String, dynamic> toJson() => {
        "authUserResponse":
            authUserResponse == null ? null : authUserResponse!.toJson(),
      };
}

class AuthUserResponseClass {
  AuthUserResponseClass({
    required this.otp,
    required this.phoneNumber,
    required this.newUser,
    required this.userId,
  });

  final String otp;
  final String phoneNumber;
  final bool newUser;
  final String userId;

  factory AuthUserResponseClass.fromJson(Map<String, dynamic> json) =>
      AuthUserResponseClass(
        otp: json["otp"] == null ? null : json["otp"],
        phoneNumber: json["phoneNumber"] == null ? null : json["phoneNumber"],
        newUser: json["newUser"] == null ? null : json["newUser"],
        userId: json["userID"] == null ? null : json["userID"],
      );

  Map<String, dynamic> toJson() => {
        "otp": otp == null ? null : otp,
        "phoneNumber": phoneNumber == null ? null : phoneNumber,
        "newUser": newUser == null ? null : newUser,
        "userID": userId == null ? null : userId,
      };
}
