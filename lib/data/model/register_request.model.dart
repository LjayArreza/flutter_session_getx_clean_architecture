import 'package:flutter_test_project/domain/entities/register.dart';

class RegisterRequestModel extends Register {
  RegisterRequestModel({
    required this.email,
    required this.password,
  });
  final String email;
  final String password;

  @override
  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      RegisterRequestModel(email: 'email', password: 'password');
}
