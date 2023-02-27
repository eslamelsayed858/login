import 'package:flutter/material.dart';
import 'package:task/custom_Button.dart';
import 'package:task/view/home_screen.dart';
import 'package:task/view/Register_screen.dart';
import 'package:task/view/widget_text_form_fild.dart';

import '../custom_clip_path.dart';
import 'custom_text_fild_login.dart';

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
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const RegisterScreen();
                    },
                  ),
                );
              },
              kcolor: Colors.deepPurple,
              text: 'Register',
            ),
            const SizedBox(
              height: 3,
            ),
            CustomButton(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const AnimetedListView();
                    },
                  ),
                );
              },
              mcolor: Colors.deepPurple,
              text: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
