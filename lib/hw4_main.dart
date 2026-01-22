import 'package:dart_kh/screens/hw4_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(KHApp());
}

class KHApp extends StatelessWidget {
  const KHApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreenKH());
  }
}
