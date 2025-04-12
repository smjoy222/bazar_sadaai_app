import 'package:bazar_sadaai_app/screens/home_body.dart';
import 'package:bazar_sadaai_app/screens/login_screen.dart';
import 'package:bazar_sadaai_app/widgets/widget_support.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email = "", password = "", name = "";

  TextEditingController namecontroller = new TextEditingController();

  TextEditingController passwordcontroller = new TextEditingController();

  TextEditingController mailcontroller = new TextEditingController();

  final _formkey = GlobalKey<FormState>();


  registration() async {
    if (password != null) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);

        ScaffoldMessenger.of(context).showSnackBar((SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "Registered Successfully",
              style: TextStyle(fontSize: 20.0),
            ))));
        // String Id = randomAlphaNumeric(10);
        // Map<String, dynamic> addUserInfo = {
        //   "Name": namecontroller.text,
        //   "Email": mailcontroller.text,
        //   "Wallet": "0",
        //   "Id": Id,
        // };
        // await DatabaseMethods().addUserDetail(addUserInfo, Id);
        // await SharedPreferenceHelper().saveUserName(namecontroller.text);
        // await SharedPreferenceHelper().saveUserEmail(mailcontroller.text);
        // await SharedPreferenceHelper().saveUserWallet('0');
        // await SharedPreferenceHelper().saveUserId(Id);

        // ignore: use_build_context_synchronously
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeBody()));
      } on FirebaseException catch (e) {
        if (e.code == 'weak-password') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "Password Provided is too Weak",
                style: TextStyle(fontSize: 18.0),
              )));
        } else if (e.code == "email-already-in-use") {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "Account Already exsists",
                style: TextStyle(fontSize: 18.0),
              )));
        }
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
                      height: MediaQuery.of(context).size.height / 1.6,
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
                              "Sing Up",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            TextFormField(
                              controller: mailcontroller,
                              validator: (value){
                                if (value==null || value.isEmpty) {
                                  return "Please Enter Email";
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
                              controller: namecontroller,
                              validator: (value){
                                if (value==null || value.isEmpty) {
                                  return "Please Enter Name";
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                hintText: "Name",
                                hintStyle: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                // border: OutlineInputBorder(
                                //   borderRadius: BorderRadius.circular(20),
                                //   borderSide: BorderSide(color: Colors.grey),
                                // ),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            SizedBox(height: 30.0),
                            TextFormField(
                              controller: passwordcontroller,
                              validator: (value){
                                if (value==null || value.isEmpty) {
                                  return "Please Enter Password";
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
                            SizedBox(height: 60.0),
                            GestureDetector(
                              onTap:()async{
                                if(_formkey.currentState!.validate()){
                                  setState(() {
                                    email = mailcontroller.text;
                                    password = passwordcontroller.text;
                                    name = namecontroller.text;
                                  });
                                  
                                }
                                registration();
                              },
                              child: Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 92, 244, 54),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "SIGN UP",
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
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "Already have an account? Log in",
                      style: AppWidgetSupport.semiTextFeildStyle(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
