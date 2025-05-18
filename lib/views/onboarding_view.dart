import 'package:flutter/material.dart';
import 'package:sebha/utils/colors/app_colors.dart';
import 'package:sebha/views/main_view.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context){
          return MainView();
        }),
      );});
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                image: AssetImage("lib/utils/assets/sebha.png")
      ),
            CircularProgressIndicator(
              color: AppColors.seconderycolor,
            ),
          ],
        ),
      ),
    );
  }
}
