import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PaymentPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class PaymentPage extends StatefulWidget {
  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> paymentOptions = [
      {'icon': Icons.account_circle, 'label': '****** 2334'},
      {'icon': Icons.account_balance_wallet, 'label': '****** 3774'},
      {'icon': Icons.email, 'label': 'abc@gmail.com'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Payment", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("TOTAL", style: TextStyle(fontSize: 16))),
            SizedBox(height: 4),
            Center(
              child: Text(
                "BDT 602",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 24),

            // Payment methods
            ...paymentOptions.asMap().entries.map((entry) {
              int index = entry.key;
              var option = entry.value;
              return Container(
                margin: EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: _selectedOption == index
                          ? Colors.green
                          : Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: RadioListTile<int>(
                  value: index,
                  groupValue: _selectedOption,
                  onChanged: (val) {
                    setState(() {
                      _selectedOption = val!;
                    });
                  },
                  title: Text(option['label']),
                  secondary: Icon(option['icon']),
                  activeColor: Colors.green,
                ),
              );
            }).toList(),

            SizedBox(height: 10),

            // Pay now button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle payment logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text("Pay now"),
              ),
            ),

            SizedBox(height: 16),

            Center(
              child: TextButton(
                onPressed: () {
                  // Navigate to add new payment method
                },
                child: Text("+ Add new payment options"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
