import 'package:chatter_message/components/my_button.dart';
import 'package:chatter_message/components/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text controllers
  final emailCotroller = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // sign up user
  void signUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                //logo
                Icon(
                  Icons.message,
                  size: 100,
                  color: Colors.grey[800],
                ),

                //create a new account message
                Text(
                  "Let's create an account for you!",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),

                const SizedBox(
                  height: 50,
                ),

                //email text field
                MyTextField(
                    controller: emailCotroller,
                    hintText: 'Email',
                    obscureText: false),

                const SizedBox(
                  height: 25,
                ),

                //password text field
                MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true),

                const SizedBox(
                  height: 25,
                ),

                //confirm password text field
                MyTextField(
                    controller: confirmPasswordController,
                    hintText: 'Confirm password',
                    obscureText: true),

                const SizedBox(
                  height: 25,
                ),

                //sign UP button
                MyButton(onTap: signUp, text: "Sign Up"),

                const SizedBox(
                  height: 50,
                ),

                //not a member? register now

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already a member?'),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Login now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
