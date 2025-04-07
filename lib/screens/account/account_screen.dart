import 'package:bazar_sadaai_app/widgets/big_text.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BigText(text:"Profile",style: TextStyle(fontSize: 24))
      ),
      
    );
  }
}