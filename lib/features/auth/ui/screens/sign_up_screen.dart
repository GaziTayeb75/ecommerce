import 'package:ecommerce/core/extensions/localization_extension.dart';
import 'package:ecommerce/features/auth/ui/screens/verify_otp_screen.dart';
import 'package:ecommerce/features/auth/ui/widgets/app_logo.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String name = '/sign-Up';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _phoneTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final TextEditingController _deliveryAddressTEController =
      TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: _buildForm(textTheme),
        ),
      ),
    );
  }

  Widget _buildForm(TextTheme textTheme) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          const SizedBox(height: 32),
          const AppLogo(),
          const SizedBox(height: 24),
          Text(
            context.localization.registerYourAccount,
            style: textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            context.localization.getStartedWithYourDetails,
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          const SizedBox(height: 32),
          TextFormField(
            controller: _emailTEController,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(hintText: context.localization.email),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: _firstNameTEController,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: context.localization.firstName,
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: _lastNameTEController,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: context.localization.lastName,
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: _passwordTEController,
            decoration: InputDecoration(
              hintText: context.localization.password,
            ),
          ),
          TextFormField(
            controller: _phoneTEController,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(hintText: context.localization.phone),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _deliveryAddressTEController,
            textInputAction: TextInputAction.next,
            maxLines: 3,
            decoration: InputDecoration(
              hintText: context.localization.deliveryAddress,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
            ),
          ),

          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _onTapSignUpButton,
            child: Text(context.localization.signUp),
          ),
          const SizedBox(height: 24),
          RichText(
            text: TextSpan(
              text: "Already have an account? ",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
              children: [
                TextSpan(
                  text: 'Sign In',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.themeColor,
                  ),
                  recognizer:
                      TapGestureRecognizer()..onTap = _onTapSignInButton,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onTapSignUpButton() {
    Navigator.pushNamed(context, VerifyOtpScreen.name);
  }

  void _onTapSignInButton() {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _passwordTEController.dispose();
    _phoneTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _deliveryAddressTEController.dispose();
    super.dispose();
  }
}
