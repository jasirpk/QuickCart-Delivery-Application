import 'package:flutter/material.dart';
import 'package:quick_cart/common/assigns.dart';

class NearBySilver extends StatelessWidget {
  const NearBySilver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          mainAxisExtent: 360,
        ),
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(Assigns.storeBreadImage),
                              fit: BoxFit.contain)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Assigns.freshlyBaker,
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
                            Assigns.siteNumber,
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: Assigns.fontFamily,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 201, 225, 237),
                                borderRadius: BorderRadius.circular(4)),
                            child: Center(
                              child: Text(
                                Assigns.topStore,
                                style: TextStyle(
                                    fontFamily: Assigns.fontFamily,
                                    fontSize: 8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Assigns.ratinNum,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            Assigns.fouryFive,
                            style:
                                TextStyle(color: Colors.orange, fontSize: 16),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                  indent: 135,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        maxRadius: 8,
                        backgroundImage: AssetImage(Assigns.circularImage),
                      ),
                      SizedBox(width: 6),
                      Text(
                        Assigns.uptoTen,
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(width: 6),
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(Assigns.itemsImage),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(width: 6),
                      Text(
                        Assigns.itemsImg,
                        style: TextStyle(
                            fontSize: 10, fontFamily: Assigns.fontFamily),
                      )
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
