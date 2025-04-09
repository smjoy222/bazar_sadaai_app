import 'package:bazar_sadaai_app/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({super.key});

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  TextEditingController mailController = new TextEditingController();

  //   String email = "";

  // final _formkey = GlobalKey<FormState>();

  // resetPassword() async {
  //   try {
  //     await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //         content: Text(
  //       "Password Reset Email has been sent !",
  //       style: TextStyle(fontSize: 18.0),
  //     )));
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == "user-not-found") {
  //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //           content: Text(
  //         "No user found for that email.",
  //         style: TextStyle(fontSize: 18.0),
  //       )));
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 168, 10),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 70),
            Container(
              alignment: Alignment.topCenter,
              child: Text(
                "Password Recovery",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Enter your email",
              style: TextStyle(
                fontSize: 20,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Expanded(
              child: Form(
                child: Padding(
                  padding: EdgeInsets.only(left: 7,right: 7),
                  child: ListView(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          controller: mailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your email";
                            } else if (!value.contains("@")) {
                              return "Please enter a valid email";
                            }
                            return null;
                          },
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white,
                              size: 30,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 35),

                      Container(
                        width: 140,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Send Mail",
                            style: TextStyle(
                              color: Color.fromARGB(255, 18, 168, 10),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                                  SizedBox(height: 20),
            Row (children: [
              Text("Don't have an account?",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Navigate to the signup page
                  Get.offAll(() => Signup());
                  // Alternatively, you can use the following line if you prefer not to use GetX:
                  //
                Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18,
                  ),
                ),
              )
            ],)
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
