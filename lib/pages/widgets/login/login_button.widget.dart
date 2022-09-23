import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/config/constants.dart';
import 'package:flutter_test_project/app/core/reusable_components/custom_reusable_solid_button.dart';
import 'package:flutter_test_project/presentation/controllers/login/login.controller.dart';
import 'package:get/get.dart';

class LoginButton extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Container(
          child: CustomReusableSolidButton(
            onPressed: controller.isButtonActive.value
                ? () => controller.loginUser()
                : () => null,
            buttonText: 'Login',
            textColor: Colors.white,
            fontWeight: FontWeight.bold,
            buttonStyle: ElevatedButton.styleFrom(
              primary: kSolidButtonColor,
            ),
          ),
        );
      },
    );
  }
}
