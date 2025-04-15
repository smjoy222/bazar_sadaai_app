import 'package:bazar_sadaai_app/admin/add_food.dart';
import 'package:bazar_sadaai_app/admin/admin_dashboard.dart';
import 'package:bazar_sadaai_app/admin/checklist.dart';
import 'package:bazar_sadaai_app/admin/statistics.dart';
import 'package:bazar_sadaai_app/screens/login_screen.dart';
import 'package:bazar_sadaai_app/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({super.key});

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Home Admin",
                style: AppWidgetSupport.headlineTextFeildStyle(),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddFood()));
              },
              child: Material(
                elevation: 10.0,
                borderRadius: BorderRadius.circular(10),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 18, 168, 10),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Image.asset(
                            "assets/images/red-apple.png",
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          "Add Food Items",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VegetableStatisticsScreen()),
                      );
                    },
              child: Container(
                height: 50.0,
                width: double.infinity,
                
                decoration: BoxDecoration(
                  
                  color: Color.fromARGB(255, 18, 168, 10),
                  borderRadius: BorderRadius.circular(10),
                ),
                
                child: Center(
                  child: Text(
                    "View Statistics",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
             SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VegetableChecklistPage()),
                      );
                    },
              child: Container(
                height: 50.0,
                width: double.infinity,
                
                decoration: BoxDecoration(
                  
                  color: Color.fromARGB(255, 18, 168, 10),
                  borderRadius: BorderRadius.circular(10),
                ),
                
                child: Center(
                  child: Text(
                    "Vegetable Checklist Page",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DashboardScreen()),
                      );
                    },
              child: Container(
                height: 50.0,
                width: double.infinity,
                
                decoration: BoxDecoration(
                  
                  color: Color.fromARGB(255, 18, 168, 10),
                  borderRadius: BorderRadius.circular(10),
                ),
                
                child: Center(
                  child: Text(
                    "Dashboard Screen",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            GestureDetector(
              onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
              child: Container(
                height: 50.0,
                width: 90,
                
                decoration: BoxDecoration(
                  
                  color: Color.fromARGB(255, 0, 0, 0),
                  borderRadius: BorderRadius.circular(10),
                ),
                
                child: Center(
                  child: Text(
                    "Logout",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
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
