import 'package:bazar_sadaai_app/screens/home_body.dart';
import 'package:bazar_sadaai_app/utils/colors.dart';
import 'package:bazar_sadaai_app/widgets/big_text.dart';
import 'package:bazar_sadaai_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Container(
        child: Container(
          margin: EdgeInsets.only(top: 45, bottom: 15,),
          padding: EdgeInsets.only(left:20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                BigText(text: "BAZAR", color: AppColors.maincolor, size: 30,),
                Row(children: [
                   SmallText(text: "SADAAI ", color: AppColors.maincolor, size: 20,),
                   Icon(Icons.shopping_bag, color: AppColors.maincolor, size: 20,),]),
                  //add_shopping_cart
                ],),
              Center(
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.maincolor,
                  ),
                  child: Icon(Icons.search, color: Colors.white,),
                ),
              ),
            ],
          ),
        ),
      ),
      HomeBody()
      ],
    ),
    );
  }
}
