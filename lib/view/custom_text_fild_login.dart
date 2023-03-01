import 'package:flutter/material.dart';
import 'package:task/view/widget_text_form_fild.dart';

class CustomTextFildLogin extends StatefulWidget {
  const CustomTextFildLogin({super.key});

  @override
  State<CustomTextFildLogin> createState() => _CustomTextFildLoginState();
}

bool ispasw = true;
final emailController = TextEditingController();
final passwordController = TextEditingController();

class _CustomTextFildLoginState extends State<CustomTextFildLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          MyTextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "pleasse enter your emil";
              } else if (emailController.text.contains('@') == false ||
                  emailController.text.contains('.') == false) {
                return 'pleasse enter a valid emil';
              }
              return null;
            },
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            labelText: 'Email',
            prefixIcon: Icons.person,
          ),
          const SizedBox(
            height: 20,
          ),
          MyTextFormField(
            validator: (Value) {
              if (Value!.isEmpty) {
                return "pleasse enter your passwer";
              } else if (Value.length < 8) {
                return 'password must be at least 8 characters';
              }
              return null;
            },
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: ispasw,
            labelText: 'Password',
            prefixIcon: Icons.lock,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  ispasw = !ispasw;
                });
              },
              icon: ispasw
                  ? Icon(Icons.remove_red_eye_outlined)
                  : Icon(Icons.visibility_off),
            ),
          )
        ],
      ),
    );
  }
}
