import 'package:bazar_sadaai_app/utils/dimensions.dart';
import 'package:bazar_sadaai_app/widgets/widget_support.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios_new_outlined,
                    color: Colors.black)),
            Image.asset(
              "assets/images/green-apple.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.6,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fresh Fruits",
                      style: AppWidgetSupport.semiBoldTextFeildStyle(),
                    ),
                    Text(
                      "Green Apple",
                      style: AppWidgetSupport.headlineTextFeildStyle(),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 15, 149, 8),
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(Icons.remove, color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: Dimensions.width20,
                ),
                Text(
                  a.toString(),
                  style: AppWidgetSupport.semiBoldTextFeildStyle(),
                ),
                SizedBox(
                  width: Dimensions.width20,
                ),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 15, 149, 8),
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            Text(
              "Green apples are an abundant source of fiber that helps in improving your metabolism and cleanses your digestive system.",
              maxLines: 3,
              style: AppWidgetSupport.lightTextFeildStyle(),
            ),
            SizedBox(
              height: Dimensions.height30,
            ),
            Row(
              children: [
                Text(
                  "Delivery Time",
                  style: AppWidgetSupport.semiBoldTextFeildStyle(),
                ),
                SizedBox(
                  width: Dimensions.width25,
                ),
                Icon(
                  Icons.alarm,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: Dimensions.width5,
                ),
                Text(
                  "Next Morning",
                  style: AppWidgetSupport.semiBoldTextFeildStyle(),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Price",
                        style: AppWidgetSupport.semiBoldTextFeildStyle(),
                      ),
                      Text(
                        "\৳150",
                        style: AppWidgetSupport.headlineTextFeildStyle(),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 15, 149, 8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Add to Cart",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: GoogleFonts.poppins().fontFamily),
                        ),
                        SizedBox(
                          width: Dimensions.width30,
                        ),
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 183, 211, 172),
                              borderRadius: BorderRadius.circular(8)),
                          child: Icon(Icons.shopping_cart_outlined,
                              color: Color.fromARGB(255, 15, 149, 8)),
                        ),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                      ],
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
