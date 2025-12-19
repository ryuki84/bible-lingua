import 'package:flutter/material.dart';

class ProgressDots extends StatelessWidget {
  final int total;
  final int completed;

  const ProgressDots({
    super.key,
    required this.total,
    required this.completed,
  });

  @override
  Widget build(BuildContext context) {
    final dots = List.generate(
      total,
      (index) => index < completed ? '●' : '○',
    ).join(' ');

    return Row(
      children: [
        const Text(
          '오늘의 진행도 (Progress)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 12),
        Text(dots, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}
