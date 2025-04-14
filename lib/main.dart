import 'package:bazar_sadaai_app/admin/admin_login.dart';
import 'package:bazar_sadaai_app/screens/home_screen.dart';
import 'package:bazar_sadaai_app/screens/login_screen.dart';
import 'package:bazar_sadaai_app/screens/onboard.dart';
import 'package:bazar_sadaai_app/screens/order.dart';
import 'package:bazar_sadaai_app/screens/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Onboard(),
      home: HomeScreen(),
      //home: AdminLogin(),
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