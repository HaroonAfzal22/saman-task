import 'package:flutter/material.dart';
import 'package:saman/Constants/app_colors.dart';

class NameTextWidget extends StatelessWidget {
  NameTextWidget({
    required this.color,
    required this.text,
    super.key,
  });
  String text;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: 'Jameel',
          color: color,
          fontSize: 40),
    );
  }
}

class NumberTextWidget extends StatelessWidget {
  NumberTextWidget({
    required this.color,
    required this.text,
    super.key,
  });

  String text;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
          color: color,
          fontSize: 30),
    );
  }
}

class DividerWidget extends StatelessWidget {
  DividerWidget({
    required this.color,
    super.key,
  });
  Color color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      color: color,
    );
  }
}
