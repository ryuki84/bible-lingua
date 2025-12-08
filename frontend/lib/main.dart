import 'package:flutter/material.dart';

void main() {
  runApp(const BibleApp());
}

class BibleApp extends StatelessWidget {
  const BibleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '오늘의 말씀',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const TodayVersePage(),
    );
  }
}

class TodayVersePage extends StatelessWidget {
  const TodayVersePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                '오늘의 말씀',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2C3E50),
                ),
              ),
              SizedBox(height: 12),
              Text(
                '예레미야 29:11 (개역개정 / NIV)',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF7F8C8D),
                ),
              ),
              SizedBox(height: 24),
              Text(
                '“여호와의 말씀이니라 너희를 향한 나의 생각을 내가 아나니 '
                '평안이요 재앙이 아니니라 너희에게 미래와 희망을 주는 것이니라”',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Color(0xFF2C3E50),
                ),
              ),
              SizedBox(height: 20),
              Text(
                '"For I know the plans I have for you," declares the LORD, '
                '"plans to prosper you and not to harm you, '
                'plans to give you hope and a future."',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  color: Color(0xFF34495E),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
