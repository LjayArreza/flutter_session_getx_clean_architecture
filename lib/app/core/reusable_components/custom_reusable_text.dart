import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomReusableText extends StatelessWidget {
  final String text;
  final Color textStyleColor;
  final FontWeight textStyleFontWeight;
  final double textStyleFontSize;
  const CustomReusableText({
    Key? key,
    required this.text,
    required this.textStyleColor,
    required this.textStyleFontWeight,
    required this.textStyleFontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: textStyleColor,
          fontWeight: textStyleFontWeight,
          fontSize: textStyleFontSize,
        ),
      ),
    );
  }
}
