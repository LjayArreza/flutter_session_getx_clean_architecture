import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_project/app/config/constants.dart';
import 'package:flutter_test_project/app/core/reusable_components/custom_reunsable_appbar.dart';
import 'package:flutter_test_project/app/core/reusable_components/custom_reusable_text.dart';
import 'package:flutter_test_project/pages/widgets/dashboard/dashboard_userlist_widget.dart';
import 'package:flutter_test_project/presentation/controllers/dashboard/dashboard.controller.dart';
import 'package:get/get.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

class DashboardPage extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Obx(() {
      return ProgressHUD(
        inAsyncCall: controller.isLoading.value,
        key: UniqueKey(),
        opacity: 0.3,
        child: Container(
          color: kBackgroundColor,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomReusableAppbar(
              isTitleCenter: true,
              backgroundColor: Colors.transparent,
              appbarTitle: CustomReusableText(
                text: 'UBX PHILIPPINES',
                textStyleColor: Colors.black,
                textStyleFontWeight: FontWeight.bold,
                textStyleFontSize: 14,
              ),
              elevation: 0,
              automaticallyImplyLeading: false,
              leadingIcon: IconButton(
                onPressed: () {
                  controller.logout();
                },
                icon: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
              ),
            ),
            body: Container(
              color: kBackgroundColor,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: CustomReusableText(
                            text: 'Token: ',
                            textStyleColor: kPrimaryTextColor,
                            textStyleFontWeight: FontWeight.normal,
                            textStyleFontSize: 12,
                          ),
                        ),
                        Container(
                          child: CustomReusableText(
                            text: controller.token.value,
                            textStyleColor: kPrimaryTextColor,
                            textStyleFontWeight: FontWeight.normal,
                            textStyleFontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    DashboardUserList(),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
