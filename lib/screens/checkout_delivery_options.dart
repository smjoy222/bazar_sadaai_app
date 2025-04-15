import 'package:bazar_sadaai_app/screens/checkout_order_details.dart';
import 'package:flutter/material.dart';

void main() => runApp(const DeliveryApp());

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery Option',
      debugShowCheckedModeBanner: false,
      home: const DeliveryOptionPage(),
    );
  }
}

class DeliveryOptionPage extends StatefulWidget {
  const DeliveryOptionPage({super.key});

  @override
  State<DeliveryOptionPage> createState() => _DeliveryOptionPageState();
}

class _DeliveryOptionPageState extends State<DeliveryOptionPage> {
  int selectedOption = 0;

  final List<Map<String, dynamic>> options = [
    {
      'title': 'Delivery',
      'subtitle': 'Styleka offers delivery service to your address.',
      'price': 'BDT 100',
      'icon': Icons.local_shipping
    },
    {
      'title': 'Pick up at store',
      'subtitle':
          'You can pick up your order at a time that is suitable for you.',
      'price': 'BDT 0',
      'icon': Icons.store
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.help_outline, color: Colors.black)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit, color: Colors.black)),
        ],
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your preferred delivery option for the order?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Available options according to your zip code 11201\nPlease select one option below',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            ...List.generate(options.length, (index) {
              final item = options[index];
              final isSelected = selectedOption == index;
              return GestureDetector(
                onTap: () => setState(() => selectedOption = index),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isSelected ? Colors.green : Colors.grey.shade300,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Radio(
                        value: index,
                        groupValue: selectedOption,
                        onChanged: (val) =>
                            setState(() => selectedOption = val!),
                        activeColor: Colors.green,
                      ),
                      const SizedBox(width: 8),
                      Icon(item['icon'], color: Colors.green),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  item['title'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  item['price'],
                                  style: const TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(item['subtitle'],
                                style: const TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderDetailsPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text('Confirm', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
