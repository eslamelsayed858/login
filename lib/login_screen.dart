import 'package:flutter/material.dart';
import 'package:task/custom_Button.dart';
import 'package:task/custom_clip_path.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                height: 300,
                color: Colors.deepPurple,
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            const CustomTextFildLogin(),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              kcolor: Colors.deepPurple,
              text: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextFildLogin extends StatelessWidget {
  const CustomTextFildLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                color: Colors.deepPurple,
              ),
              labelText: 'Email',
              labelStyle: TextStyle(
                color: Colors.deepPurple,
              ),
              focusedBorder: OutlineInputBorder(),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.key_off,
                color: Colors.deepPurple,
              ),
              labelText: 'Password',
              labelStyle: TextStyle(
                color: Colors.deepPurple,
              ),
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.deepPurple,
              ),
              focusedBorder: OutlineInputBorder(),
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
