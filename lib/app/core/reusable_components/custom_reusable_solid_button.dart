import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomReusableSolidButton extends StatelessWidget {
  final String buttonText;
  final ButtonStyle buttonStyle;
  final Color textColor;
  final FontWeight fontWeight;
  final VoidCallback? onPressed;
  const CustomReusableSolidButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    required this.textColor,
    required this.fontWeight,
    required this.buttonStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(buttonText,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: fontWeight,
                fontSize: 16,
                color: textColor,
              ),
            )),
        style: buttonStyle,
      ),
    );
  }
}
