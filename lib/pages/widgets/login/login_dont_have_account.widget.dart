import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/core/routes/app_pages.dart';
import 'package:flutter_test_project/app/core/utils/utils.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginDontHaveAccount extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have and account?',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed(Routes.REGISTER);
                },
                child: Text(
                  'REGISTER',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              'or login via',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(Utils.getImages('fb')),
              ),
              Image(
                image: AssetImage(Utils.getImages('twitter')),
              ),
              Image(
                image: AssetImage(Utils.getImages('gmail')),
              ),
            ],
          )
        ],
      ),
    );
  }
}
