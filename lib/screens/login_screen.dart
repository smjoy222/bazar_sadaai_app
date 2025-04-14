import 'package:bazar_sadaai_app/admin/admin_login.dart';
import 'package:bazar_sadaai_app/admin/home_admin.dart';
import 'package:bazar_sadaai_app/screens/forget_pass.dart';
import 'package:bazar_sadaai_app/screens/home_screen.dart';
import 'package:bazar_sadaai_app/screens/signup.dart';
import 'package:bazar_sadaai_app/widgets/widget_support.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// Removed duplicate LoginScreen class declaration to fix the error.
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "", password = "";

  final _formkey = GlobalKey<FormState>();

  TextEditingController useremailcontroller = new TextEditingController();
  TextEditingController userpasswordcontroller = new TextEditingController();

  userLogin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
          "No User Found for that Email",
          style: TextStyle(fontSize: 18.0, color: Colors.red),
        )));
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
          "Wrong Password Provided by User",
          style: TextStyle(fontSize: 18.0, color: Colors.red),
        )));
      } else {
        // Handle any other errors
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
          e.message ?? "An unexpected error occurred.",
          style: TextStyle(fontSize: 18.0, color: Colors.red),
        )));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 92, 244, 54),
                    Color.fromARGB(255, 244, 248, 252),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 3,
              ),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Text(""),
            ), // Other widgets can go here, like login form, etc.
            Container(
              margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "assets/images/logo.png",
                      width: MediaQuery.of(context).size.width / 2.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            SizedBox(height: 30.0),
                            Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            TextFormField(
                              controller: useremailcontroller,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter Your Email";
                                } else if (!RegExp(
                                        r"^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                                  return "Please Enter a Valid Email";
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                // border: OutlineInputBorder(
                                //   borderRadius: BorderRadius.circular(20),
                                //   borderSide: BorderSide(color: Colors.grey),
                                // ),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            SizedBox(height: 30.0),
                            TextFormField(
                              controller: userpasswordcontroller,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter Your Password";
                                } else if (value.length < 6) {
                                  return "Password must be at least 6 characters long";
                                } else if (value.length > 15) {
                                  return "Password must be less than 15 characters long";
                                } else {
                                  return null;
                                }
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                // border: OutlineInputBorder(
                                //   borderRadius: BorderRadius.circular(20),
                                //   borderSide: BorderSide(color: Colors.grey),
                                // ),
                                prefixIcon: Icon(
                                  Icons.password,
                                  color: const Color.fromARGB(255, 2, 2, 2),
                                ),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ForgetPass(),
                                  ),
                                );
                              },
                              child: Container(
                                alignment: Alignment.topRight,
                                child: Text(
                                  "Forgot Password?",
                                  style: AppWidgetSupport.semiTextFeildStyle(),
                                ),
                              ),
                            ),
                            SizedBox(height: 60.0),
                            GestureDetector(
                              onTap: () {
                                if (_formkey.currentState!.validate()) {
                                  setState(() {
                                    email = useremailcontroller.text;
                                    password = userpasswordcontroller.text;
                                  });
                                }
                                userLogin();
                              },
                              child: Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 18, 168, 10),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    // child: GestureDetector(
                                    // onTap: () {
                                    //   Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) => HomeScreen(),
                                    //     ),
                                    //   );
                                    // },
                                    child: Text(
                                      "LOGIN",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 70.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                    child: Text(
                      "Don't have an account? Sign up",
                      style: AppWidgetSupport.semiTextFeildStyle(),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AdminLogin()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Only For Admin LogIn",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
