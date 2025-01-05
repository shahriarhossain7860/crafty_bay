import 'package:crafty_bay/app/app_theme_data.dart';
import 'package:crafty_bay/app/controller_binder.dart';
import 'package:crafty_bay/features/auth/ui/Screens/complete_profile_screen.dart';
import 'package:crafty_bay/features/auth/ui/Screens/email_verification_screen.dart';
import 'package:crafty_bay/features/auth/ui/Screens/otp_verification_screen.dart';
import 'package:crafty_bay/features/auth/ui/Screens/splash_screen.dart';
import 'package:crafty_bay/features/common/ui/screens/main_bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '../features/home/ui/screens/home_screen.dart';
class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: AppThemeData.lightThemeData,
      initialBinding: ControllerBinder(),
      routes: {
        '/': (context) => const SplashScreen(),
        EmailVerificationScreen.name: (context)=> const EmailVerificationScreen(),
        OtpVerificationScreen.name: (context)=> const OtpVerificationScreen(),
        CompleteProfileScreen.name: (context)=> const CompleteProfileScreen(),
        HomeScreen.name: (context)=> const HomeScreen(),
        MainBottomNavScreen.name: (context)=> const MainBottomNavScreen()
      },
    );
  }
}
