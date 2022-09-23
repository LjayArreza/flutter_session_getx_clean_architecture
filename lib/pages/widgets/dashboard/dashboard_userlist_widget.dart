import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_project/app/config/constants.dart';
import 'package:flutter_test_project/app/core/reusable_components/custom_reusable_text.dart';
import 'package:flutter_test_project/app/core/routes/app_pages.dart';
import 'package:flutter_test_project/presentation/controllers/dashboard/dashboard.controller.dart';
import 'package:get/get.dart';

class DashboardUserList extends GetWidget<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemCount: controller.firstnameString.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              controller.avatar = controller.avatarString[index];
              controller.firstName = controller.firstnameString[index];
              controller.lastName = controller.lastNameString[index];
              Get.toNamed(Routes.USER_DETAILS);
            },
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(
                controller.avatarString[index],
              ),
            ),
            title: CustomReusableText(
              text: controller.firstnameString[index] +
                  ' ' +
                  controller.lastNameString[index],
              textStyleColor: kPrimaryTextColor,
              textStyleFontWeight: FontWeight.bold,
              textStyleFontSize: 12,
            ),
            subtitle: CustomReusableText(
              text: controller.emailString[index],
              textStyleColor: kPrimaryTextColor,
              textStyleFontWeight: FontWeight.normal,
              textStyleFontSize: 13,
            ),
            trailing: Icon(
              Icons.arrow_right_outlined,
            ),
          );
        },
      ),
    );
  }
}
