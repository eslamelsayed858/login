import 'package:flutter/material.dart';
import 'package:task/custom_Button.dart';
import 'package:task/custom_clip_path.dart';
import 'package:task/view/home_screen.dart';
import 'package:task/view/text_form_filed.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: FormKey,
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
                    if (FormKey.currentState!.validate()) {
                      print(EmailController.text);
                      print(NameController.text);
                      print(phoneController.text);
                      print(passwordController.text);

                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const AnimetedListView();
                        },
                      ));
                    }
                  },
                  text: 'Login',
                  kcolor: Colors.deepPurple,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
