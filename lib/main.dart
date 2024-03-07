import 'package:flutter/material.dart';

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
  final List<Color> colors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.pink,
    Colors.teal,
    Colors.orange,
  ];

  Color? selectedColor;

  void _setColor(Color color) {
    setState(() {
      selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    final shufledColors = colors..shuffle();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: InkWell(
        onTap: () {
          _setColor(shufledColors.first);
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: selectedColor,
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
