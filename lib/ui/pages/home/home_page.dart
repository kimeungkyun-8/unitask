import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart'; // 패키지가 있다고 가정합니다.

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        return;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('내 과제'),
          actions: [
            IconButton(
              icon: const Icon(LucideIcons.bell), // Icon()으로 감싸야 합니다.
              onPressed: () {},
            ),
          ], // Scaffold가 여기서 닫혀있던 것을 제거했습니다.
        ),
        body: const SafeArea(
          child: Placeholder(),
        ),
      ),
    );
  }
}