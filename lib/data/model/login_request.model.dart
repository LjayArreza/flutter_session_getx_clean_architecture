import 'package:flutter_test_project/domain/entities/login.dart';

class LoginRequestModel extends Login {
  LoginRequestModel({
    required this.email,
    required this.password,
  }) : super(email: email, password: password);

  final String email;
  final String password;

  @override
  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      LoginRequestModel(email: 'email', password: 'password');
}
