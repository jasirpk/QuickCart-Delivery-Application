import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quick_cart/common/assigns.dart';
import 'package:quick_cart/common/style.dart';
import 'package:quick_cart/view/components/custom_card.dart';
import 'package:quick_cart/view/components/custom_single_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.location_on,
              size: 30,
              color: myColor,
            ),
            Text(
              Assigns.location,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              size: 30,
              color: myColor,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 270,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Assigns.FieldInputLabel,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        CupertinoIcons.search,
                        color: myColor,
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 13,
                  backgroundImage: AssetImage(Assigns.notification),
                ),
                Icon(
                  Icons.sell_outlined,
                  color: Colors.yellow,
                  size: 30,
                ),
              ],
            ),
            SizedBox(height: 40),
            Text(
              Assigns.FirstHeadLine,
              style: TextStyle(
                fontFamily: Assigns.fontFamily,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCardWidget(
                  subText: Assigns.delivery,
                  text: Assigns.percentage,
                  image: Assigns.deliveryImaage,
                ),
                CustomCardWidget(
                  subText: Assigns.medicine,
                  text: Assigns.percentage,
                  image: Assigns.medineImage,
                ),
                CustomCardWidget(
                  subText: Assigns.petText,
                  text: Assigns.percentage,
                  image: Assigns.petImage,
                ),
                CustomSingleCard(
                  image: Assigns.giftImage,
                  text: Assigns.gift,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomSingleCard(
                  image: Assigns.meatImage,
                  text: Assigns.meatText,
                ),
                CustomSingleCard(
                  image: Assigns.cosmeticImage,
                  text: Assigns.cosmetic,
                ),
                CustomSingleCard(
                  image: Assigns.stationaryImage,
                  text: Assigns.stationary,
                ),
                CustomCardWidget(
                  subText: Assigns.store,
                  text: Assigns.percentage,
                  image: Assigns.storeImage,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Assigns.more,
                  style: TextStyle(color: myColor, fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: myColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
