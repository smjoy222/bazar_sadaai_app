import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AddCardPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class AddCardPage extends StatefulWidget {
  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  int _selectedCardIndex = 0;
  bool _acceptedTerms = true;
  bool _defaultPayment = false;

  final _cardHolderController = TextEditingController();
  final _cardNumberController = TextEditingController();
  final _expiryController = TextEditingController();
  final _cvvController = TextEditingController();

  List<String> cardTypes = ['Visa', 'MasterCard', 'bKash'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(),
        title: Text("Payment", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Card Type Selector
            Text("Select card", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Row(
              children: List.generate(cardTypes.length, (index) {
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() => _selectedCardIndex = index);
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: _selectedCardIndex == index
                                ? Colors.green
                                : Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          cardTypes[index],
                          style: TextStyle(
                              color: _selectedCardIndex == index
                                  ? Colors.green
                                  : Colors.black),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 20),

            // Card Holder
            TextField(
              controller: _cardHolderController,
              decoration: InputDecoration(
                labelText: "Card holder",
                hintText: "Your name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),

            // Card Number
            TextField(
              controller: _cardNumberController,
              decoration: InputDecoration(
                labelText: "Card number",
                hintText: "XXXX XXXX XXXX XXXX",
                prefixIcon: Icon(Icons.credit_card),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 12),

            // Validity and CVV
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _expiryController,
                    decoration: InputDecoration(
                      labelText: "Valid until",
                      hintText: "MM/YYYY",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: _cvvController,
                    decoration: InputDecoration(
                      labelText: "Security code",
                      hintText: "***",
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),

            // Checkboxes
            CheckboxListTile(
              value: _acceptedTerms,
              onChanged: (val) => setState(() => _acceptedTerms = val!),
              title: Row(
                children: [
                  Text("Accept the "),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Terms
                    },
                    child: Text(
                      "Term and Conditions",
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            CheckboxListTile(
              value: _defaultPayment,
              onChanged: (val) => setState(() => _defaultPayment = val!),
              title: Text("Use as default payment method"),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            SizedBox(height: 16),

            // Add Card Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Validate & Submit
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text("Add card"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
