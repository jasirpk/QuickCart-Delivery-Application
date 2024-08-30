import 'package:flutter/material.dart';
import 'package:quick_cart/common/assigns.dart';

class TrendingSilver extends StatelessWidget {
  const TrendingSilver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          mainAxisExtent: 280,
        ),
        itemBuilder: (context, index) {
          return Container(
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(Assigns.iceCreameImage),
                          fit: BoxFit.contain)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Assigns.mithasText,
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: Assigns.fontFamily,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        Assigns.sweetsText,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: Assigns.fontFamily,
                        ),
                      ),
                      Text(
                        Assigns.locationText,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: Assigns.fontFamily,
                        ),
                      ),
                      Text(
                        Assigns.rating,
                        style: TextStyle(
                          fontFamily: Assigns.fontFamily,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
