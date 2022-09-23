import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_project/app/config/constants.dart';
import 'package:flutter_test_project/app/core/reusable_components/custom_reunsable_appbar.dart';
import 'package:flutter_test_project/app/core/reusable_components/custom_reusable_text.dart';
import 'package:flutter_test_project/app/core/reusable_components/custom_reusable_textfields.dart';
import 'package:flutter_test_project/app/core/routes/app_pages.dart';
import 'package:flutter_test_project/presentation/controllers/dashboard/dashboard.controller.dart';
import 'package:get/get.dart';

class UserDetailsPage extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: kBackgroundColor,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: CustomReusableAppbar(
            isTitleCenter: true,
            backgroundColor: Colors.transparent,
            appbarTitle: CustomReusableText(
              text: 'User Details',
              textStyleColor: Colors.black,
              textStyleFontWeight: FontWeight.bold,
              textStyleFontSize: 14,
            ),
            elevation: 0,
            automaticallyImplyLeading: false,
            leadingIcon: IconButton(
              onPressed: () {
                Get.offAllNamed(Routes.DASHBOARD);
              },
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
          ),
          body: Container(
            child: Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    margin: EdgeInsets.only(top: 20),
                    child: Image.network(
                      controller.avatar,
                      height: 400,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: CustomReusableText(
                      text: 'Hello! I\'m, ' +
                          controller.firstName +
                          ' ' +
                          controller.lastName,
                      textStyleColor: kPrimaryTextColor,
                      textStyleFontWeight: FontWeight.bold,
                      textStyleFontSize: 15,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
