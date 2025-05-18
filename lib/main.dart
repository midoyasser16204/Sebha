import 'package:flutter/material.dart';
import 'package:sebha/views/onboarding_view.dart';

void main() {
  runApp(const Sebha());
}

class Sebha extends StatelessWidget {
  const Sebha({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingView(),
    );
  }
}