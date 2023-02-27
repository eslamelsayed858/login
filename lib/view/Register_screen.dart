import 'package:flutter/material.dart';
import 'package:task/custom_Button.dart';
import 'package:task/custom_clip_path.dart';
import 'package:task/view/home_screen.dart';
import 'package:task/view/text_form_filed.dart';
import 'package:task/view/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                    'Register',
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
              height: 1,
            ),
            const TextFiled(),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              onTap: () async {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const AnimetedListView();
                  },
                ));
              },
              text: 'Login',
              kcolor: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}
