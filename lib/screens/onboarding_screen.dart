import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constant.dart';
import 'home_screen.dart';

class OnboardingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ListView(
            children: [
              // Load a Lottie file from your assets
              Lottie.asset('assets/LottieLogo1.json'),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                color: kOrangeColor,
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
