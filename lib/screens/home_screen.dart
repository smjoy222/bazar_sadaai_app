import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Text('Welcome to the Home Screen!'),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: const <Widget>[
          Icon(Icons.home, size: 26,color: Colors.white,),
          Icon(Icons.local_offer, size: 26,color: Colors.white,),
          Icon(Icons.shopping_cart, size: 26,color: Colors.white,),
          Icon(Icons.notifications, size: 26,color: Colors.white,),
          Icon(Icons.account_circle, size: 26,color: Colors.white,),
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