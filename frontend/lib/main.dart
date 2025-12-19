import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const BibleLinguaApp());
}

class BibleLinguaApp extends StatelessWidget {
  const BibleLinguaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bible Lingua',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
