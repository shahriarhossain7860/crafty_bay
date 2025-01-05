import 'package:crafty_bay/app/app_colors.dart';
import 'package:crafty_bay/features/auth/ui/Screens/otp_verification_screen.dart';
import 'package:crafty_bay/features/auth/ui/widgets/app_logo_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  static const String name = '/email-verification';
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTEcontroller = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
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
                const SizedBox(height: 80,),
                AppLogoWidget(),
                const SizedBox(height: 24,),
                Text(
                  'Welcome Back',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8,),
                Text(
                  'Please Enter Your Email Address',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.grey
                  ),
                ),
                const SizedBox(height: 24,),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _emailTEcontroller,
                  decoration: InputDecoration(
                    hintText: 'Email Address'
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (String? value){
                    if(value?.trim().isEmpty??true){
                      return 'Enter Your Email Address';
                    }
                    if(!EmailValidator.validate(value!)){
                      return 'Enter a Valid Email Address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16,),
                ElevatedButton(
                  onPressed: () {
                    // if(_formkey.currentState!.validate()){}
                    Navigator.pushNamed(context, OtpVerificationScreen.name);
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
