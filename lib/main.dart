import 'package:flutter/material.dart';

// Lab 2: MiCard
// Danh thiếp kỹ thuật số: ảnh đại diện, tên, nghề nghiệp và thông tin liên lạc.
void main() {
  runApp(const MiCardApp());
}

class MiCardApp extends StatelessWidget {
  const MiCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiCard',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Text('MiCard', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.teal[900],
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 56,
                    backgroundImage: AssetImage('images/avatar.png'),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Nguyen Van A',
                  style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'RobotoCondensed',
                    fontSize: 20,
                    color: Colors.teal.shade100,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 150,
                  child: Divider(color: Colors.teal.shade100),
                ),
                const InfoCard(icon: Icons.phone, text: '+84 123 456 789'),
                const InfoCard(icon: Icons.email, text: 'nguyenvana@example.com'),
                const InfoCard(icon: Icons.location_on, text: 'Da Nang, Viet Nam'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
      child: ListTile(
        leading: Icon(icon, color: Colors.teal),
        title: Text(
          text,
          style: TextStyle(
            color: Colors.teal.shade900,
            fontFamily: 'RobotoCondensed',
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
