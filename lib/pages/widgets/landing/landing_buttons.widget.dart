import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_project/app/config/constants.dart';
import 'package:flutter_test_project/app/core/reusable_components/custom_reusable_outline_button.dart';
import 'package:flutter_test_project/app/core/reusable_components/custom_reusable_solid_button.dart';
import 'package:flutter_test_project/app/core/routes/app_pages.dart';
import 'package:flutter_test_project/presentation/controllers/landing/landing.controller.dart';
import 'package:get/get.dart';

class LandingButtonWidget extends GetWidget<LandingController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.1),
      child: Column(
        children: [
          Container(
            child: CustomReusableSolidButton(
              onPressed: () {
                Get.toNamed(Routes.LOGIN);
              },
              buttonText: 'Login',
              textColor: Colors.white,
              fontWeight: FontWeight.bold,
              buttonStyle: ElevatedButton.styleFrom(
                primary: kSolidButtonColor,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: CustomReusableOutlinedButton(
              onPressed: () {
                Get.toNamed(Routes.REGISTER);
              },
              buttonText: 'Register',
              textColor: kSolidButtonColor,
              fontWeight: FontWeight.bold,
              buttonStyle: OutlinedButton.styleFrom(
                side: BorderSide(
                  width: 1.0,
                  color: kSolidButtonColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
