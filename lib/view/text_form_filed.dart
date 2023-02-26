import 'package:flutter/material.dart';
import 'package:task/view/widget_text_form_fild.dart';

class TextFiled extends StatefulWidget {
  const TextFiled({super.key});

  @override
  State<TextFiled> createState() => _TextFiledState();
}

bool ispas = true;
bool ispass = true;

class _TextFiledState extends State<TextFiled> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          MyTextFormField(
            keyboardType: TextInputType.emailAddress,
            labelText: 'Full Name',
            prefixIcon: Icons.person,
          ),
          const SizedBox(
            height: 8,
          ),
          MyTextFormField(
            keyboardType: TextInputType.emailAddress,
            labelText: 'Email',
            prefixIcon: Icons.person,
          ),
          const SizedBox(
            height: 8,
          ),
          MyTextFormField(
            keyboardType: TextInputType.phone,
            labelText: 'phone',
            prefixIcon: Icons.phone,
          ),
          const SizedBox(
            height: 8,
          ),
          MyTextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: ispas,
            labelText: 'Password',
            prefixIcon: Icons.lock,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  ispas = !ispas;
                });
              },
              icon: ispas
                  ? Icon(Icons.remove_red_eye_outlined)
                  : Icon(Icons.visibility_off),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          MyTextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: ispass,
            labelText: 'Confirm Password',
            prefixIcon: Icons.lock,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  ispass = !ispass;
                });
              },
              icon: ispass
                  ? Icon(Icons.remove_red_eye_outlined)
                  : Icon(Icons.visibility_off),
            ),
          ),
        ],
      ),
    );
  }
}
