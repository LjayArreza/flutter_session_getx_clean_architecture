import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_project/app/config/constants.dart';
import 'package:flutter_test_project/app/core/reusable_components/custom_reunsable_appbar.dart';
import 'package:flutter_test_project/app/core/reusable_components/custom_reusable_text.dart';
import 'package:flutter_test_project/app/core/routes/app_pages.dart';
import 'package:flutter_test_project/pages/widgets/register/registration_button.widget.dart';
import 'package:flutter_test_project/pages/widgets/register/registration_header.widget.dart';
import 'package:flutter_test_project/pages/widgets/register/registration_textfields.widget.dart';
import 'package:flutter_test_project/presentation/controllers/register/register.controller.dart';
import 'package:get/get.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

class RegisterPage extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return SafeArea(
          child: ProgressHUD(
            inAsyncCall: controller.isLoading.value,
            key: UniqueKey(),
            opacity: 0.3,
            child: Form(
              key: controller.registerFormKey,
              child: Scaffold(
                backgroundColor: kBackgroundColor,
                appBar: CustomReusableAppbar(
                  isTitleCenter: true,
                  backgroundColor: Colors.transparent,
                  appbarTitle: CustomReusableText(
                    text: 'REGISTRATION',
                    textStyleColor: Colors.black,
                    textStyleFontWeight: FontWeight.bold,
                    textStyleFontSize: 14,
                  ),
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  leadingIcon: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
                body: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    color: kBackgroundColor,
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        RegistrationHeader(),
                        SizedBox(height: 50),
                        RegistrationTextFields(),
                        SizedBox(height: 30),
                        RegistrationButton(),
                      ],
                    ),
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
