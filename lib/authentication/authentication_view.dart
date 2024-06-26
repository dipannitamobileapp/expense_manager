import 'package:flutter/material.dart';
import '../components/animated_shape/animated_shape.dart';
import '../components/auth_switch_button.dart';
import 'signin/signin.dart';
import 'signup/signup.dart';

class AuthenticationView extends StatefulWidget {
  const AuthenticationView({Key? key}) : super(key: key);

  @override
  State<AuthenticationView> createState() => _AuthenticationViewState();
}

class _AuthenticationViewState extends State<AuthenticationView> {
  bool _showSignIn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 250, 16, 0),
            child: _showSignIn ? const SignIn() : const SignUp(),
          ),
          !_showSignIn ?   AnimatedShape(color: Color(0xFF595DC6), show: true, title:"Create Account" ): SizedBox(),

          _showSignIn ?    AnimatedShape(color: Color(0xFFFC5F8E), show: true, title:"Welcome Back" ): SizedBox(),

          AuthSwitchButton(
            showSignIn: _showSignIn,
            onTap: () {
              setState(() {
                _showSignIn = !_showSignIn;
              });
            },
          )
        ],
      ),
    );
  }
}
