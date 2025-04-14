import 'package:bazar_sadaai_app/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Material(
            elevation: 2.0,
            child: Container(
              child: Center(
                child: Text(
                  "Wallet",
                  style: AppWidgetSupport.headlineTextFeildStyle(),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
