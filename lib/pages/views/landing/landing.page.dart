import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_project/app/config/constants.dart';
import 'package:flutter_test_project/pages/widgets/landing/landing_buttons.widget.dart';
import 'package:flutter_test_project/presentation/controllers/landing/landing.controller.dart';
import 'package:get/get.dart';

class LandingPage extends GetView<LandingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: kBackgroundColor,
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Image(
                  image: AssetImage('assets/images/ubx_logo.png'),
                  height: 100,
                  width: 200,
                ),
              ),
              LandingButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
