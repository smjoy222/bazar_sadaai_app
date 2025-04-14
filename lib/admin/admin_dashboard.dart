import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DashboardScreen(),
  ));
}

class DashboardScreen extends StatelessWidget {
  final List<Map<String, dynamic>> tasks = [
    {'icon': Icons.inbox, 'text': '6 orders to Collect'},
    {'icon': Icons.local_shipping, 'text': '20 orders on delivery'},
    {'icon': Icons.payment, 'text': '26 payments to capture'},
    {'icon': Icons.replay_circle_filled, 'text': '1 chargeback to review'},
  ];

  final List<Map<String, String>> activities = [
    {
      'name': 'Jahangir Alam Tamal',
      'action': 'Sent 12 items for delivery',
      'time': '12:00 PM'
    },
    {
      'name': 'Anika Afrin',
      'action': 'Collect the payment from delivery man 03',
      'time': '11:37 PM'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Stats"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              // App Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bajar Sadaai",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[700]),
                  ),
                  Icon(Icons.menu, size: 28),
                ],
              ),
              const SizedBox(height: 20),

              // Overview
              Text("Overview", style: TextStyle(fontSize: 16)),
              const SizedBox(height: 10),

              Row(
                children: [
                  _summaryCard(
                      title: "Total Sell",
                      value: "23K",
                      color: Colors.green,
                      status: "+3.29%"),
                  const SizedBox(width: 10),
                  _summaryCard(
                      title: "Total Buy",
                      value: "17K",
                      color: Colors.grey[400],
                      status: null),
                ],
              ),
              const SizedBox(height: 20),

              // Stats Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Stats",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      _statsTab("Total sales", true),
                      _statsTab("Service", false),
                      _statsTab("Traffic", false),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Fake Bar Chart
              SizedBox(
                height: 120,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(7, (index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            height: 50 + index * 5.0,
                            width: 10,
                            color: Colors.green),
                        SizedBox(height: 4),
                        Container(height: 30, width: 10, color: Colors.grey),
                      ],
                    );
                  }),
                ),
              ),
              const SizedBox(height: 20),

              // Activities
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Activities",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("See all", style: TextStyle(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 10),

              Column(
                children: activities.map((activity) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(child: Icon(Icons.person)),
                      title: Text(activity['name'] ?? ''),
                      subtitle: Text(activity['action'] ?? ''),
                      trailing: Text(activity['time'] ?? ''),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),

              // Tasks
              Text("Tasks",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),

              Column(
                children: tasks.map((task) {
                  return ListTile(
                    leading: Icon(task['icon'], color: Colors.green),
                    title: Text(task['text'] ?? ''),
                    trailing: Icon(Icons.chevron_right),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _summaryCard(
      {required String title,
      required String value,
      Color? color,
      String? status}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color?.withAlpha((0.1 * 255).toInt()),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(value,
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                if (status != null)
                  Container(
                    margin: EdgeInsets.only(left: 6, bottom: 4),
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: color ?? Colors.green),
                    ),
                    child: Text(status,
                        style: TextStyle(
                            color: color, fontWeight: FontWeight.bold)),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _statsTab(String label, bool active) {
    return Container(
      margin: const EdgeInsets.only(left: 8),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: active ? Colors.blue : Colors.transparent,
            width: 2,
          ),
        ),
      ),
      child: Text(label,
          style: TextStyle(
              color: active ? Colors.blue : Colors.grey,
              fontWeight: active ? FontWeight.bold : FontWeight.normal)),
    );
  }
}
