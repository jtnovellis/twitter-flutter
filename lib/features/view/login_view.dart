import 'package:flutter/material.dart';
import 'package:twitter_clone/common/rounded_small_button.dart';
import 'package:twitter_clone/constants/constants.dart';
import 'package:twitter_clone/features/widgets/auth_field.dart';
import 'package:twitter_clone/theme/theme.dart';
import 'package:flutter/gestures.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final appbar = UIConstants.appBar();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                AuthField(
                  controller: _emailController,
                  hintText: 'Enter the email',
                ),
                const SizedBox(
                  height: 25,
                ),
                AuthField(
                  controller: _passwordController,
                  hintText: 'Enter the password',
                ),
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: RoundedSmallButton(
                    textColor: Pallete.backgroundColor,
                    backgroundColor: Pallete.whiteColor,
                    onTab: () {},
                    label: 'Done',
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Already have an account?',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: ' Sign Up',
                        style: const TextStyle(
                          color: Pallete.blueColor,
                          fontSize: 16,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
