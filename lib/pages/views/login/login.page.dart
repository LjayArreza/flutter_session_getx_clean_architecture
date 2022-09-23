import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_project/app/config/constants.dart';
import 'package:flutter_test_project/pages/widgets/login/login_button.widget.dart';
import 'package:flutter_test_project/pages/widgets/login/login_dont_have_account.widget.dart';
import 'package:flutter_test_project/pages/widgets/login/login_forgot_password.widget.dart';
import 'package:flutter_test_project/pages/widgets/login/login_header.widget.dart';
import 'package:flutter_test_project/pages/widgets/login/login_textfields.widget.dart';
import 'package:flutter_test_project/presentation/controllers/login/login.controller.dart';
import 'package:get/get.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return ProgressHUD(
          inAsyncCall: controller.isLoading.value,
          key: UniqueKey(),
          opacity: 0.3,
          child: Form(
            key: controller.loginFormKey,
            child: Scaffold(
              backgroundColor: kBackgroundColor,
              body: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  color: kBackgroundColor,
                  child: Column(
                    children: [
                      SizedBox(height: 100),
                      LoginHeader(),
                      SizedBox(height: 50),
                      LoginTextFields(),
                      SizedBox(height: 5),
                      LoginForgotPasswordButton(),
                      SizedBox(height: 10),
                      LoginButton(),
                      SizedBox(height: 20),
                      LoginDontHaveAccount(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
