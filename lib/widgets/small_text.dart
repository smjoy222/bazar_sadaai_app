import 'package:bazar_sadaai_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double height;
  // TextOverflow overFlow;
  SmallText({
    super.key,
    this.color,
    required this.text,
    this.size = 12,
    this.height = 1.2,
    // this.overFlow = TextOverflow.ellipsis,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // overflow: overFlow,
      style: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: color ?? AppColors.maincolor,
        fontSize: size,
        height: height,
        // fontWeight: FontWeight.w400,
      ),
    );
  }
}