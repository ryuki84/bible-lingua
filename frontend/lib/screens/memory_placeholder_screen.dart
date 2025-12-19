import 'package:flutter/material.dart';

class MemoryPlaceholderScreen extends StatelessWidget {
  const MemoryPlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('암송 도전')),
      body: const Center(
        child: Text(
          '암송 화면 (구현 예정)',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
