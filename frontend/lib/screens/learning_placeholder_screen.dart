import 'package:flutter/material.dart';

class LearningPlaceholderScreen extends StatelessWidget {
  const LearningPlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('말씀 학습')),
      body: const Center(
        child: Text(
          '학습 화면 (구현 예정)',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
