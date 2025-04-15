import 'package:bazar_sadaai_app/screens/checkout_payment_optins.dart';
import 'package:flutter/material.dart';

class OrderDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your order details", style: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Delivery status
              Row(
                children: [
                  Icon(Icons.delivery_dining),
                  SizedBox(width: 10),
                  Text("Delivery",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("Online", style: TextStyle(color: Colors.green)),
                ],
              ),
              SizedBox(height: 8),
              Text(
                  "The earliest delivery available is\n08/14/2025 | 9:00 AM - 11:00 PM"),
              SizedBox(height: 16),

              // Order progress
              LinearProgressIndicator(
                  value: 0.25, backgroundColor: Colors.grey[300]),
              SizedBox(height: 8),
              Text("Order received", style: TextStyle(color: Colors.green)),
              Text(
                  "We have received your order and will start processing it soon"),

              Divider(height: 32),

              // Address/Recipient info
              Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(width: 10),
                  Text("Online"),
                ],
              ),
              Text(
                  "For security reasons, we are unable to display the recipient's complete address."),

              Divider(height: 32),

              // Order item
              Text("My orders", style: TextStyle(fontWeight: FontWeight.bold)),

              ListTile(
                leading: Image.asset(
                  "assets/images/avocado.png",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text("Avocado"),
                subtitle: Text("1 kg"),
                trailing: Text("\৳150"),
              ),

              Divider(height: 8),

              // Purchase details
              Text("Purchase details",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Order ID"),
                  Text("123544"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Purchase date"),
                  Text("8/13/2025 - 5:30 PM"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Order place"),
                  Text("ONLINE"),
                ],
              ),

              Divider(height: 8),

              // Payment details
              Text("Payment details",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              _buildPriceRow("Subtotal", "BDT 635"),
              _buildPriceRow("Delivery", "BDT 100"),
              _buildPriceRow("Promotion", "BDT 33"),
              Divider(),
              _buildPriceRow("Total", "BDT 602", highlight: true),

              SizedBox(height: 16),

              // Checkout Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PaymentPage()),
                      );
                    },
                  child: Text("Checkout"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPriceRow(String label, String amount, {bool highlight = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(
            amount,
            style: TextStyle(
              fontWeight: highlight ? FontWeight.bold : FontWeight.normal,
              color: highlight ? Colors.green : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
