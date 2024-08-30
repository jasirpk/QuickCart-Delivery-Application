import 'package:flutter/material.dart';
import 'package:quick_cart/common/assigns.dart';
import 'package:quick_cart/common/style.dart';

class ViewAllButtonSilver extends StatelessWidget {
  const ViewAllButtonSilver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 200,
          decoration: BoxDecoration(
            color: myColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              Assigns.viewLastButton,
              style: TextStyle(
                  color: Colors.white, fontFamily: Assigns.fontFamily),
            ),
          ),
        )
      ],
    );
  }
}
