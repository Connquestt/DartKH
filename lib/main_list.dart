import 'package:dart_kh/screens/list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(KHApp());
}

class KHApp extends StatelessWidget {
  const KHApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ListScreen());
  }
}
