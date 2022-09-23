import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationHeader extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image(
        image: AssetImage('assets/images/ubx_logo.png'),
        height: 100,
        width: 200,
      ),
    );
  }
}
