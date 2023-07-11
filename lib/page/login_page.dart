import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //logo
              Icon(
                Icons.message,
                size: 88,
                color: Colors.grey[800],
              ),
              //welcome back message
              Text(
                "Welcome back! You've been missed",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              //email text field

              //password text field

              //sign in button

              //not a member? register now
            ],
          ),
        ),
      ),
    );
  }
}
