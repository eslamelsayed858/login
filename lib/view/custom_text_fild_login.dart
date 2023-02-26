import 'package:flutter/material.dart';
import 'package:task/view/widget_text_form_fild.dart';

class CustomTextFildLogin extends StatefulWidget {
  const CustomTextFildLogin({super.key});

  @override
  State<CustomTextFildLogin> createState() => _CustomTextFildLoginState();
}

bool ispasw = true;

class _CustomTextFildLoginState extends State<CustomTextFildLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          MyTextFormField(
            keyboardType: TextInputType.emailAddress,
            labelText: 'Email',
            prefixIcon: Icons.person,
          ),
          const SizedBox(
            height: 20,
          ),
          MyTextFormField(
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
