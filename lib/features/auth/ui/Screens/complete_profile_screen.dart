import 'package:crafty_bay/features/auth/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../home/ui/screens/home_screen.dart';

class CompleteProfileScreen extends StatefulWidget {
  static const String name = '/complete-profile';

  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final TextEditingController _FirstNameTEcontroller = TextEditingController();
  final TextEditingController _LastNameTEcontroller = TextEditingController();
  final TextEditingController _MobileTEcontroller = TextEditingController();
  final TextEditingController _cityTEcontroller = TextEditingController();
  final TextEditingController _shippingAddressTEcontroller =
      TextEditingController();
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
                const SizedBox(height: 60),
                AppLogoWidget(
                  width: 80,
                  height: 80,
                ),
                const SizedBox(height: 24),
                Text(
                  'Complete Profile',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  'Get Started With us With Your Details',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 24),
                buildForm(),
                // Call the form builder without wrapping it in a Form widget
                ElevatedButton(
                  onPressed: () {
                    // if (_formkey.currentState!.validate()) {
                    //   // Handle the form submission
                    // }
                    Navigator.pushNamed(context, HomeScreen.name);
                  },
                  child: Text('Complete'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // No need for a Form widget inside here anymore
  Widget buildForm() {
    return Column(
      children: [
        TextFormField(
          controller: _FirstNameTEcontroller,
          decoration: InputDecoration(hintText: 'First Name'),
          validator: (String? value) {
            if (value?.trim().isEmpty ?? true) {
              return 'Enter your First Name';
            }
            return null;
          },
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: _LastNameTEcontroller,
          decoration: InputDecoration(hintText: 'Last Name'),
          validator: (String? value) {
            if (value?.trim().isEmpty ?? true) {
              return 'Enter Your Last Name';
            }
            return null;
          },
        ),
        const SizedBox(height: 8),
        TextFormField(
          maxLength: 11,
          controller: _MobileTEcontroller,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(hintText: 'Mobile'),
          validator: (String? value) {
            if (value?.trim().isEmpty ?? true) {
              return 'Enter A Valid Mobile Number';
            }
            return null;
          },
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: _cityTEcontroller,
          decoration: InputDecoration(hintText: 'City'),
          validator: (String? value) {
            if (value?.trim().isEmpty ?? true) {
              return 'Enter your City';
            }
            return null;
          },
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: _shippingAddressTEcontroller,
          maxLines: 3,
          decoration: InputDecoration(hintText: 'Shipping Address'),
          validator: (String? value) {
            if (value?.trim().isEmpty ?? true) {
              return 'Enter a valid Shipping Address';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  @override
  void dispose() {
    _FirstNameTEcontroller.dispose();
    _LastNameTEcontroller.dispose();
    _MobileTEcontroller.dispose();
    _cityTEcontroller.dispose();
    _shippingAddressTEcontroller.dispose();
    super.dispose();
  }
}
