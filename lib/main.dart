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

/**
 * Mengubah value hello word menggunakan const didalam class akan error karena variabel bersifat const yang tidak dapat diubah
 * Solusinya menggunakan static const didalam class agar dapat diakses tanpa membuat instance class
 */
 

// class MyHello extends StatelessWidget{
//   const MyHello({super.key});
//   const String hello = "Hello, World!";

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Scaffold(body: Center(child: Text(hello))),);
//   }
// }

class MyHello extends StatelessWidget{
  const MyHello({super.key});
  static const String hello = "Hello, World!";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Center(child: Text(hello))),);
  }
}