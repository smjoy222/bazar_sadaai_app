import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: VegetableStatisticsScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class VegetableStatisticsScreen extends StatefulWidget {
  @override
  _VegetableStatisticsScreenState createState() =>
      _VegetableStatisticsScreenState();
}

class _VegetableStatisticsScreenState extends State<VegetableStatisticsScreen> {
  int quantity = 10;

  final List<Map<String, String>> vegetableStats = [
    {
      'name': 'Leafy Green',
      'location': 'Garden A',
      'date': '2023-04-15',
      'amount': '1200'
    },
    {
      'name': 'Tomato',
      'location': 'Greenhouse 5',
      'date': '2023-04-10',
      'amount': '900'
    },
    {
      'name': 'Cabbage',
      'location': 'Field 3',
      'date': '2023-04-12',
      'amount': '800'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Vegetable Statistics", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            SizedBox(height: 10),

            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search vegetables...",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Stats Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStatCard('4,239,482', 'Total Collected'),
                _buildStatCard('5,801', 'Avg. Daily Rate'),
                _buildStatCard('Top 5\nTypes', 'by Collection'),
              ],
            ),
            SizedBox(height: 30),

            // Detailed Statistics
            Text(
              'Detailed Statistics',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 10),
            ...vegetableStats.map((veg) => _buildVegetableItem(veg)).toList(),
            SizedBox(height: 20),

            // Add Items Button with Quantity Controller
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text("Add Items"),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  ),
                ),
                SizedBox(width: 16),
                _buildQuantityController(),
              ],
            ),
            SizedBox(height: 20),

            // Add Button
            ElevatedButton(
              onPressed: () {},
              child: Text("Add"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: "Statistics"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        currentIndex: 1,
        onTap: (index) {},
      ),
    );
  }

  Widget _buildStatCard(String title, String subtitle) {
    return Column(
      children: [
        Text(title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.green)),
        Text(subtitle,
            textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildVegetableItem(Map<String, String> veg) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(veg['name'] ?? '',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Location: ${veg['location']}'),
                Text('Date: ${veg['date']}'),
              ],
            ),
          ),
          Text(veg['amount'] ?? '',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
        ],
      ),
    );
  }

  Widget _buildQuantityController() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              if (quantity > 0) {
                setState(() {
                  quantity--;
                });
              }
            },
            icon: Icon(Icons.remove),
          ),
          Text(quantity.toString(), style: TextStyle(fontSize: 16)),
          IconButton(
            onPressed: () {
              setState(() {
                quantity++;
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
