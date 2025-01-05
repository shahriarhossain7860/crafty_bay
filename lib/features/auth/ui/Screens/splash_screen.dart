import 'package:crafty_bay/app/assets_path.dart';
import 'package:crafty_bay/features/auth/ui/Screens/email_verification_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/app_logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen() async{
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushNamed(context, EmailVerificationScreen.name);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              AppLogoWidget(),
              Spacer(),
              const CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }
}
