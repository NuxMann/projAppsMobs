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

/**
 * TextStyle 
 */

class TextDasar extends StatelessWidget {
  const TextDasar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "My Nickname is Ry",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 2, 76, 136),
      ),
    );
  }
}

class fontTextMore extends StatelessWidget {
  const fontTextMore({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Nuxxmann",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 203, 25, 1),
          ),
        ),
        Text(
          "Age 22",
          style: TextStyle(
            fontSize: 35,
            fontStyle: FontStyle.italic,
            color: Color.fromARGB(255, 2, 76, 136),
          ),
        ),
      ],
    );
  }
}

// Spacing

class Spacing extends StatelessWidget {
  const Spacing({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Nuxxmann",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 203, 25, 1),
            letterSpacing: 6,
          ),
        ),
        SizedBox(height: 20),
        Text(
          "Age 22",
          style: TextStyle(
            fontSize: 35,
            fontStyle: FontStyle.italic,
            color: Color.fromARGB(255, 2, 76, 136),
            wordSpacing: 6,
          ),
        ),
      ],
    );
  }
}

// Decoration And Shadow
class DecorationAndShadow extends StatelessWidget {
  const DecorationAndShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Nuxxmann Underline",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 203, 25, 1),
            letterSpacing: 6,
            decoration: TextDecoration.underline,
            decorationColor: Color.fromARGB(255, 2, 76, 136),
            decorationStyle: TextDecorationStyle.double,
          ),
        ),
        SizedBox(height: 20),
        Text(
          "RyLineThrough",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            color: Color.fromARGB(255, 203, 25, 1),
            letterSpacing: 6,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        SizedBox(height: 20),
        Text(
          "Age 22",
          style: TextStyle(
            fontSize: 35,
            fontStyle: FontStyle.italic,
            color: Color.fromARGB(255, 2, 76, 136),
            wordSpacing: 6,
            shadows: [
              Shadow(
                color: Color.fromARGB(255, 203, 25, 1),
                offset: Offset(4, 3),
                blurRadius: 2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Text Alignment

class TextAlignment extends StatelessWidget {
  const TextAlignment({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Ry Left',
          textAlign: TextAlign.left,
        ),
        Text(
          'Ry Center',
          textAlign: TextAlign.center,
        ),
        Text(
          'Ry Right',
          textAlign: TextAlign.right,
        ),
        Text(
          'Justify Ry',
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
  }

  // MaxLines dan Overflow

  class MaxLinesAndOverflow extends StatelessWidget {
  const MaxLinesAndOverflow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: const Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        maxLines: 3,
        softWrap: true,
        overflow: TextOverflow.clip,
      ),
    );

  }
  }

  // RichText dan TextSpan

  class RichTextAndTextSpan extends StatelessWidget {
  const RichTextAndTextSpan({super.key});

  @override
  Widget build(BuildContext context) {
     return RichText(
      text: const TextSpan(
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: 'Yoo ndak tau, tanya ko tanya saya ',
          ),
          TextSpan(
            text: 'Kagettt',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          TextSpan(
            text: ' dan ',
          ),
          TextSpan(
            text: 'Saya akan kembali ke solo',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );

  }
  }

  // Text Scaler
  class TextScalerBuild extends StatelessWidget {
  const TextScalerBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Hello, World!',
          style: TextStyle(fontSize: 20),
        ),

        SizedBox(height: 20),

        Text(
          'TEXT UKURANNN BIGG DAN JUMBOOO',
          textScaler: TextScaler.linear(2.0),
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
  }

  // Section Title

  class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}

