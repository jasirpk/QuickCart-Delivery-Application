import 'package:flutter/material.dart';
import 'package:quick_cart/common/assigns.dart';

class CrazeDealSilver extends StatelessWidget {
  const CrazeDealSilver({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: 8, bottom: 8, right: 8),
            child: Container(
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(Assigns.crazeDealImage),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                  Positioned(
                    top: 30,
                    left: 20,
                    child: Text(
                      Assigns.dealText,
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontFamily: Assigns.fontFamily),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 50,
                    child: Row(
                      children: [
                        Text(
                          Assigns.explore,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.orange,
                              fontFamily: Assigns.fontFamily),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.orange,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
