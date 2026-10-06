import 'package:flutter/material.dart';

void main() {
  // runApp(MaterialApp(title: 'MyAppsRy',
  //   debugShowMaterialGrid: true,
  //   debugShowCheckedModeBanner: true,
  //   home: Scaffold(
  //     body: Center(child: Text("Hello, World!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue)),)
  //   ),
  //   ));
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'MyAppsRy',
    debugShowMaterialGrid: true,
    debugShowCheckedModeBanner: true,
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Hello, World!",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class MyTextCustom extends StatelessWidget {
  const MyTextCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello, World!",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    );
  }
}