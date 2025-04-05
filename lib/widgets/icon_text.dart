import 'package:bazar_sadaai_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const IconText({Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,),
        SizedBox(width: 5,),
        SmallText(text: text,),
      ],
    );
  }
}