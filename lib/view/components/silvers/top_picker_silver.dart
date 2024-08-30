import 'package:flutter/material.dart';
import 'package:quick_cart/common/assigns.dart';
import 'package:quick_cart/common/style.dart';

class TopPicksSilver extends StatelessWidget {
  const TopPicksSilver({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            var color = colors[index];
            return Padding(
              padding: EdgeInsets.only(right: 8, top: 8, bottom: 8),
              child: Container(
                  width: screenWidth * 0.9,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                              child: Container(
                            height: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(Assigns.discountFruit,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: Assigns.fontFamily,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ],
                            ),
                          )),
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(Assigns.discountImage),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        left: 20,
                        bottom: 30,
                        child: Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.orange),
                          child: Center(
                              child: Text(
                            Assigns.checkNow,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: Assigns.fontFamily),
                          )),
                        ),
                      ),
                    ],
                  )),
            );
          }),
    );
  }
}
