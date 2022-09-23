// ignore_for_file: avoid_unnecessary_containers, unnecessary_new

import "package:flutter/material.dart";
import 'package:raised_buttons/raised_buttons.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Tutorial 2 first app",
//       home: Scaffold(
//         // ignore: prefer_const_constructors
//         appBar: AppBar(title: Text("Hello world App Bar")),
//         body: const Center(
//           heightFactor: 20,
//           widthFactor: 20,
//           child:Text("Hello world first App"),
//         ),
//       ),
//     );
//   }
// }
//start toturial 3

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "make home page", home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    String s = "hello world!";
  void _changeText(){
    if(s[0]=='h'){
      setState(() {
        s = "Welcome to StateFull Hello World";
      });
    }else{
      setState(() {
        s = "hello world!";
      });
    }
  }
   Widget _bodyWedget(){
      return  Container(
        child: Center(child: Column(
          children: <Widget>[
           Text(s),
          ElevatedButton(
              //style: style,
              onPressed: _changeText,
              child: const Text('Run'),
            ),
        ],)),
      );
   }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StateFull Wedget"),
        shadowColor: Colors.redAccent,
        backgroundColor: Colors.black87,
      ),
      body: _bodyWedget(),
    );
  }
}
