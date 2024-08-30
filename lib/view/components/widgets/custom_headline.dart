import 'package:flutter/material.dart';
import 'package:quick_cart/common/assigns.dart';

class CustomHeadLIneTextWidget extends StatelessWidget {
  final String text;

  const CustomHeadLIneTextWidget({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: Assigns.fontFamily,
        fontSize: 20,
      ),
    );
  }
}
