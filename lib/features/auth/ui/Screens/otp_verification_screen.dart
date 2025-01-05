import 'dart:async';

import 'package:crafty_bay/app/app_colors.dart';
import 'package:crafty_bay/app/app_constant.dart';
import 'package:crafty_bay/features/auth/ui/Screens/complete_profile_screen.dart';
import 'package:crafty_bay/features/auth/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  static const String name = '/otp-verification';

  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpTEcontroller = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  RxInt _remainingTime = AppConstant.resendOtpTimeOutInSecs.obs;
  late Timer timer;
  RxBool _enabledResendCodeButton = false.obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startResendCodeTimer();
  }

  void _startResendCodeTimer() {
    _enabledResendCodeButton.value = false;
    _remainingTime.value = AppConstant.resendOtpTimeOutInSecs;
    timer = Timer.periodic(
      Duration(seconds: 1),
      (t) {
        _remainingTime.value--;
        if (_remainingTime.value == 0) {
          t.cancel();
          _enabledResendCodeButton.value = true;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                AppLogoWidget(),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Enter OTP Code',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'A 4 digit OTP Code has been sent to your Email',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 24,
                ),
                PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  animationDuration: Duration(milliseconds: 300),
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      selectedFillColor: AppColors.themeColor,
                      activeFillColor: AppColors.themeColor,
                      inactiveColor: AppColors.themeColor,
                      borderRadius: BorderRadius.circular(8)),
                  keyboardType: TextInputType.number,
                  appContext: context,
                  controller: _otpTEcontroller,
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    // if (_formkey.currentState!.validate()) {}
                    Navigator.pushNamed(context, CompleteProfileScreen.name);
                  },
                  child: Text('Next'),
                ),
                const SizedBox(
                  height: 24,
                ),
                Obx(() => Visibility(
                      visible: !_enabledResendCodeButton.value,
                      child: RichText(
                        text: TextSpan(
                          text: 'This Code Will be expired in',
                          style: TextStyle(color: Colors.grey),
                          children: [
                            TextSpan(
                              text: '${_remainingTime}s',
                              style: TextStyle(color: AppColors.themeColor),
                            ),
                          ],
                        ),
                      ),
                    )),
                Obx(
                  () => Visibility(
                    visible: _enabledResendCodeButton.value,
                    child: TextButton(
                      onPressed: () {
                        _startResendCodeTimer();
                      },
                      child: Text('Resend Code'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    timer.cancel();
    super.dispose();
  }
}
