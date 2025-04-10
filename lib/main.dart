import 'package:bazar_sadaai_app/screens/home_screen.dart';
import 'package:bazar_sadaai_app/screens/login_screen.dart';
import 'package:bazar_sadaai_app/screens/onboard.dart';
import 'package:bazar_sadaai_app/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboard(),
    );
  }
}



//for log in screen

// import 'package:bazar_sadaai_app/screens/home_screen.dart';
// import 'package:bazar_sadaai_app/screens/login_screen.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LoginScreen(),
//     );
//   }
// }



//for home screen

// import 'package:bazar_sadaai_app/screens/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }