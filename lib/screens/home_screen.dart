import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:bazar_sadaai_app/utils/colors.dart';
import 'package:bazar_sadaai_app/screens/home_body.dart';

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
          // Header section
          Container(
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
                    child: Icon(Icons.search, color: Colors.white, size: 25),
                  ),
                ),
              ],
            ),
          ),
          // Home body content
          Expanded(
            child: SingleChildScrollView(
              child:
                  // Home body content
                  const HomeBody(),
            ),
          ),
        ],
      ),
      // Bottom navigation bar
      bottomNavigationBar: CurvedNavigationBar(
        items: const <Widget>[
          Icon(Icons.home, size: 26, color: Colors.white),
          Icon(Icons.local_offer, size: 26, color: Colors.white),
          Icon(Icons.shopping_cart, size: 26, color: Colors.white),
          Icon(Icons.notifications, size: 26, color: Colors.white),
          Icon(Icons.account_circle, size: 26, color: Colors.white),
        ],
        color: Colors.green,
        buttonBackgroundColor: Colors.green,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            // Handle navigation based on the index tapped
            switch (index) {
              case 0:
                // Navigate to Home
                break;
              case 1:
                // Navigate to Offers
                break;
              case 2:
                // Navigate to Cart
                break;
              case 3:
                // Navigate to Notifications
                break;
              case 4:
                // Navigate to Profile
                break;
            }
          });
        },
      ),
    );
  }
}
