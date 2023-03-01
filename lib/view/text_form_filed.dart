import 'package:flutter/material.dart';
import 'package:task/view/widget_text_form_fild.dart';

class TextFiled extends StatefulWidget {
  const TextFiled({super.key});

  @override
  State<TextFiled> createState() => _TextFiledState();
}

bool ispas = true;
bool ispass = true;
final NameController = TextEditingController();
final EmailController = TextEditingController();
final phoneController = TextEditingController();
final passwordController = TextEditingController();

class _TextFiledState extends State<TextFiled> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          MyTextFormField(
            controller: NameController,
            validator: (value) {
              if (value!.isEmpty) {
                return "pleasse enter your Name";
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            labelText: 'Full Name',
            prefixIcon: Icons.person,
          ),
          const SizedBox(
            height: 8,
          ),
          MyTextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "pleasse enter your Email";
              } else if (EmailController.text.contains('@') == false ||
                  EmailController.text.contains('.') == false) {
                return 'pleasse enter a valid emil';
              }
              return null;
            },
            controller: EmailController,
            keyboardType: TextInputType.emailAddress,
            labelText: 'Email',
            prefixIcon: Icons.person,
          ),
          const SizedBox(
            height: 8,
          ),
          MyTextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "pleasse enter your phone";
              } else if (value.length < 11) {
                return 'password must be at least 11 characters';
              }
              return null;
            },
            controller: phoneController,
            keyboardType: TextInputType.phone,
            labelText: 'phone',
            prefixIcon: Icons.phone,
          ),
          const SizedBox(
            height: 8,
          ),
          MyTextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "pleasse enter your Password";
              } else if (value.length < 8) {
                return 'password must be at least 8 characters';
              }
              return null;
            },
            controller: passwordController,
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
            controller: passwordController,
            validator: (value) {
              if (value!.isEmpty) {
                return "pleasse enter your Confirm Password";
              } else if (value.length < 8) {
                return 'password must be at least 8 characters';
              }
              return null;
            },
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
