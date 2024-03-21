import 'dart:math';
import 'package:flutter/material.dart';

/// doc-style comments.
final randomizer = Random();

void main() {
  runApp(const MyApp());
}

/// doc-style comments.
class MyApp extends StatelessWidget {
  /// doc-style comments.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(
        title: 'Color Switcher',
      ),
    );
  }
}

/// doc-style comments.
class MyHomePage extends StatefulWidget {
  /// doc-style comments.
  const MyHomePage({required this.title, super.key});

  /// doc-style comments.
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color color = Colors.pink;

  void setColor() {
    setState(() {
      final int a = randomizer.nextInt(255);
      final int b = randomizer.nextInt(255);
      final int c = randomizer.nextInt(255);
      color = Color.fromARGB(255, a, b, c);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: InkWell(
        onTap: setColor,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: color,
          child: const Center(
            child: Text(
              'Hello there',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
      ),
    );
  }
}
