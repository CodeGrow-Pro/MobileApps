import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tutorial 2 first app",
      home: Scaffold(
        // ignore: prefer_const_constructors
        appBar: AppBar(title: Text("Hello world App Bar")),
        body: const Center(
          heightFactor: 20,
          widthFactor: 20,
          child:Text("Hello world first App"),
        ),
      ),
    );
  }
}
