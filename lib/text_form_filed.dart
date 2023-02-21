import 'package:flutter/material.dart';

class TextFiled extends StatelessWidget {
  const TextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                color: Colors.deepPurple,
              ),
              labelText: 'Full Name',
              labelStyle: TextStyle(
                color: Colors.deepPurple,
              ),
              focusedBorder: OutlineInputBorder(),
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 1),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
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
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.phone,
                color: Colors.deepPurple,
              ),
              labelText: 'Phone',
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
              focusedBorder: OutlineInputBorder(),
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.deepPurple,
              ),
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
              labelText: 'Confirm Password',
              labelStyle: TextStyle(
                color: Colors.deepPurple,
              ),
              focusedBorder: OutlineInputBorder(),
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.deepPurple,
              ),
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
