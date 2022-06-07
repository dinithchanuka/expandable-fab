import 'package:flutter/material.dart';

import 'actionButton.dart';
import 'expandableFab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expandable FAB',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Expandable FAB Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const ExpandableFab(
        distance: 120.0,
        children: [
          ActionButton(
            icon: Icon(Icons.format_size),
            size: 50.0,
          ),
          ActionButton(
            icon: Icon(Icons.format_size),
            size: 50.0,
          ),
          ActionButton(
            icon: Icon(Icons.format_size),
            size: 50.0,
          ),
          ActionButton(
            icon: Icon(Icons.format_size),
            size: 50.0,
          ),
          ActionButton(
            icon: Icon(Icons.format_size),
            size: 50.0,
          ),
        ],
      ),
    );
  }
}
