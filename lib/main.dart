import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Layout mit Row und Column"),
          backgroundColor: Colors.blue,
        ),
        body: const RowWithColumns(),
      ),
    );
  }
}

class RowWithColumns extends StatelessWidget {
  const RowWithColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text("Column 1, Text 1"),
              Text("Column 1, Text 2"),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text("Column 2, Text 1"),
              Text("Column 2, Text 2"),
            ],
          ),
        ),
      ],
    );
  }
}
