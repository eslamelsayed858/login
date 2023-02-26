import 'package:flutter/material.dart';

Widget MyTextFormField({
  required String labelText,
  required IconData prefixIcon,
  IconButton? suffixIcon,
  bool? obscureText,
  required TextInputType keyboardType,
}) {
  return TextFormField(
    obscureText: obscureText ?? false,
    keyboardType: keyboardType,
    decoration: InputDecoration(
      prefixIcon: Icon(
        prefixIcon,
        color: Colors.deepPurple,
      ),
      suffixIcon: suffixIcon != null
          ? IconButton(
              onPressed: () {},
              icon: suffixIcon,
              color: Colors.deepPurple,
            )
          : null,
      labelText: labelText,
      labelStyle: const TextStyle(
        color: Colors.deepPurple,
      ),
      focusedBorder: const OutlineInputBorder(),
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          width: 1,
        ),
      ),
    ),
  );
}
