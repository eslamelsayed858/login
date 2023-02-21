import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.onTap,
      required this.text,
      this.kcolor = Colors.white,
      this.mcolor = Colors.white});

  VoidCallback? onTap;
  String text;
  final Color kcolor;
  final Color mcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: kcolor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 2.0,
                color: Colors.deepPurple,
              )),
          width: double.infinity,
          height: 60,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: mcolor,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
