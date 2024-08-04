import 'package:example/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  var app = const MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Example"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 233, 155, 247),
        ),
        body: Example(),
      ),
    );
  }
}

