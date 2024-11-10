import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(icon:const Icon(Icons.add), onPressed: () {}),
          IconButton(icon:const Icon(Icons.settings), onPressed: () {}),
          IconButton(icon:const Icon(Icons.call), onPressed: () {}),
        ],
      ),
      body:const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileSection(
              icon: Icons.icecream,
              text: 'Ice cream is very delicious right?',
              iconSize: 100, // Make the ice cream icon bigger
            ),
            ProfileSection(
              icon: Icons.code,
              text: 'Programming is not boring if you love it',
              iconSize: 100,
            ),
            ProfileSection(
              icon: Icons.egg,
              iconSize: 100,
              text:
              'If you submit code directly copy from ChatGPT then mark will 0',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  final IconData icon;
  final String text;
  final double iconSize; // Added this property

  const ProfileSection({
    required this.icon,
    required this.text,
    this.iconSize = 40, // Default icon size
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: iconSize, // Adjust radius to match iconSize if desired
            backgroundColor: Colors.purple.shade50,
            child: Icon(
              icon,
              size: iconSize, // Use iconSize for the Icon widget
              color: Colors.purple.shade800,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style:const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
