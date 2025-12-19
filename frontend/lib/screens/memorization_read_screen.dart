import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class MemorizationReadScreen extends StatelessWidget {
  const MemorizationReadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('오늘의 암송 (Read)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: AppColors.card,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Text(
                    '마음의 가난한 자는 복이 있나니\n'
                    '천국이 그들의 것임이요\n\n'
                    '(마태복음 5:3)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      height: 1.6,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: () {
                  // Stage 2로 이동 (다음 단계에서 구현)
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('다음 단계는 곧 구현됩니다 🙂'),
                    ),
                  );
                },
                child: const Text(
                  '다음 (Next)',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
