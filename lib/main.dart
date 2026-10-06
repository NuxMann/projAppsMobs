import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'MyAppsRy',
    debugShowMaterialGrid: true,
    debugShowCheckedModeBanner: true,
    home: Scaffold(
      body: Center(child: Text("Hello, World!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue)),)
    ),
    ));
}