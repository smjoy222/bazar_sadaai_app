import 'package:bazar_sadaai_app/screens/home_body.dart';
import 'package:bazar_sadaai_app/utils/colors.dart';
import 'package:bazar_sadaai_app/widgets/big_text.dart';
import 'package:bazar_sadaai_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        children: [
          //showing the header
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 25, bottom: 10),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "BAZAR",
                        style: TextStyle(
                          fontFamily: GoogleFonts.plaster().fontFamily,
                          fontSize: 30,
                          color: AppColors.maincolor,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "SHADAI ",
                            style: TextStyle(
                              fontFamily:
                                  GoogleFonts.fascinateInline().fontFamily,
                              color: AppColors.maincolor,
                              fontSize: 23,
                            ),
                          ),
                          Icon(
                            Icons.shopping_bag,
                            color: AppColors.maincolor,
                            size: 20,
                          ),
                        ],
                      ),
                      //add_shopping_cart
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.maincolor,
                      ),
                      child: Icon(Icons.search, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //showing the body
          HomeBody(),
        ],
      ),
    );
  }
}
