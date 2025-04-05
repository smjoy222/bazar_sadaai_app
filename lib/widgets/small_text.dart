import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double height;
  // TextOverflow overFlow;
  SmallText({
    super.key,
    this.color=const Color.fromARGB(255, 42, 234, 32),
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
      fontFamily: "Roboto",
        color: color ,
        fontSize: size,
        height: height
        // fontWeight: FontWeight.w400,
      ),
    );
  }
}
