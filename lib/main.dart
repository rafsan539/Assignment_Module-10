import 'package:flutter/material.dart';

void main() => runApp(NeedBloodApp());

class NeedBloodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NeedBloodScreen(),
    );
  }
}

class NeedBloodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('                          Need Blood',
          style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white) ,),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.bloodtype_outlined,
                size: 80,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Donate Blood',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
