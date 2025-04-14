import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: VegetableChecklistPage(),
  ));
}

class VegetableChecklistPage extends StatefulWidget {
  @override
  _VegetableChecklistPageState createState() => _VegetableChecklistPageState();
}

class _VegetableChecklistPageState extends State<VegetableChecklistPage> {
  final Map<String, bool> vegetables = {
    "Carrot": true,
    "Tomato": true,
    "Lettuce": true,
    "Pepper": true,
    "Broccoli": true,
    "Cucumber": true,
    "Spinach": false,
    "Eggplant": false,
    "Pumpkin": false,
    "Onion": false,
  };

  @override
  Widget build(BuildContext context) {
    int collectedCount = vegetables.values.where((v) => v).length;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Vegetable Collection Checklist',
          style: TextStyle(color: Colors.black),
        ),
        leading: BackButton(color: Colors.black),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Vegetable Collection Checklist",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: vegetables.keys.map((vegetable) {
                  return CheckboxListTile(
                    title: Text(vegetable),
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    value: vegetables[vegetable],
                    onChanged: (bool? value) {
                      setState(() {
                        vegetables[vegetable] = value!;
                      });
                    },
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "$collectedCount out of ${vegetables.length} collected",
              style: TextStyle(color: Colors.grey[700]),
            ),
            const SizedBox(height: 6),
            LinearProgressIndicator(
              value: collectedCount / vegetables.length,
              backgroundColor: Colors.green[50],
              color: Colors.green,
              minHeight: 6,
            ),
          ],
        ),
      ),
    );
  }
}
