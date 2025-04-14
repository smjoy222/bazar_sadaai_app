import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
//bakend
  //  Stream? foodStream;

  // Widget foodCart() {
  //   return StreamBuilder(
  //       stream: foodStream,
  //       builder: (context, AsyncSnapshot snapshot) {
  //         return snapshot.hasData
  //             ? ListView.builder(
  //                 padding: EdgeInsets.zero,
  //                 itemCount: snapshot.data.docs.length,
  //                 shrinkWrap: true,
  //                 scrollDirection: Axis.vertical,
  //                 itemBuilder: (context, index) {
  //                   DocumentSnapshot ds = snapshot.data.docs[index];
  //                   total= total+ int.parse(ds["Total"]);
  //                   return Container(
  //             child: Material(
  //               elevation: 5.0,
  //               borderRadius: BorderRadius.circular(10),
  //               child: Container(
  //                 decoration:
  //                     BoxDecoration(borderRadius: BorderRadius.circular(10)),
  //                 margin: EdgeInsets.only(right: 20.0, left: 20.0),
  //                 padding: EdgeInsets.all(10),
  //                 child: Row(
  //                   // crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Container(
  //                       height: 90,
  //                       width: 40,
  //                       decoration: BoxDecoration(
  //                           border: Border.all(),
  //                           borderRadius: BorderRadius.circular(10)),
  //                       child: Center(child: Text('2')),
  //                     ),
  //                     SizedBox(
  //                       width: 20,
  //                     ),
  //                     ClipRRect(
  //                         borderRadius: BorderRadius.circular(10),
  //                         child: Image.asset(
  //                           "assets/images/avocado.png",
  //                           height: 50,
  //                           width: 50,
  //                           fit: BoxFit.cover,
  //                         )),
  //                     SizedBox(
  //                       height: 20,
  //                     ),
  //                     Column(
  //                       children: [
  //                         Text(
  //                           "Avocado",
  //                           style: TextStyle(
  //                               fontSize: 18, fontWeight: FontWeight.bold),
  //                         ),
  //                         Text(
  //                           "\$2.00",
  //                           style: TextStyle(
  //                               fontSize: 18, fontWeight: FontWeight.bold),
  //                         )
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           );
  //                 })
  //             : CircularProgressIndicator();
  //       });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 2.0,
              child: Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Center(
                  child: Text(
                    "Cart",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 6, 192, 40),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.only(right: 20.0, left: 20.0),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 90,
                        width: 40,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text('2')),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/avocado.png",
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "Avocado",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\$2.00",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Amount",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 17, 17, 17),
                    ),
                  ),
                  Text(
                    "\$50",
                    style: TextStyle(
                      fontSize: 18,
                      // fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 17, 17, 17),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 6, 192, 40),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
              child: Center(
                  child: Text(
                "Checkout",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
