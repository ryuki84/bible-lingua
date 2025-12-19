import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../widgets/app_card.dart';
import '../widgets/progress_dots.dart';
import 'learning_placeholder_screen.dart';
import 'memory_placeholder_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: const Text('Bible Lingua'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const ProgressDots(total: 5, completed: 0),
            const SizedBox(height: 24),
            AppCard(
              title: '오늘의 말씀 학습 (Learning)',
              subtitle: '영어로 말씀을 이해해요 (EN + KO)',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LearningPlaceholderScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            AppCard(
              title: '오늘의 암송 도전 (Memory)',
              subtitle: '말씀을 마음에 새겨요 (KO only)',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const MemoryPlaceholderScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
