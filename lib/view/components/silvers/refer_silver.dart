import 'package:flutter/material.dart';
import 'package:quick_cart/common/assigns.dart';
import 'package:quick_cart/common/style.dart';

class ReferSilver extends StatelessWidget {
  const ReferSilver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: myColor),
      child: Padding(
        padding: EdgeInsets.only(top: 8, left: 8),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Assigns.referAndEarn,
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontFamily: Assigns.fontFamily),
                ),
                Row(
                  children: [
                    Text(
                      Assigns.inviteText,
                      style: TextStyle(
                          fontFamily: Assigns.fontFamily,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_circle_right,
                        color: Colors.white, size: 20),
                  ],
                ),
              ],
            ),
            SizedBox(width: 10),
            Container(
              width: 60,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assigns.giftSingleImage),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
