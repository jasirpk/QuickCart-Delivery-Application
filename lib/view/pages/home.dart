import 'package:flutter/material.dart';
import 'package:quick_cart/common/assigns.dart';
import 'package:quick_cart/common/style.dart';
import 'package:quick_cart/view/components/silvers/button_silver.dart';
import 'package:quick_cart/view/components/silvers/craze_silver.dart';
import 'package:quick_cart/view/components/silvers/delivery_shop_silver.dart';
import 'package:quick_cart/view/components/silvers/delivery_shop_single_silver.dart';
import 'package:quick_cart/view/components/silvers/nerby_silver.dart';
import 'package:quick_cart/view/components/silvers/refer_silver.dart';
import 'package:quick_cart/view/components/silvers/search_field_silver.dart';
import 'package:quick_cart/view/components/silvers/top_picker_silver.dart';
import 'package:quick_cart/view/components/silvers/trending_silver.dart';
import 'package:quick_cart/view/components/widgets/custom_headline.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchFieldSilver(),
              SizedBox(height: 40),
              CustomHeadLIneTextWidget(
                text: Assigns.FirstHeadLine,
              ),
              SizedBox(height: 10),
              DeliveryShopSilver(),
              SizedBox(height: 20),
              DeliverShopsSingleSiver(),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Assigns.more,
                    style:
                        TextStyle(color: myColor, fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: myColor,
                  )
                ],
              ),
              SizedBox(height: 10),
              CustomHeadLIneTextWidget(
                text: Assigns.secondHeadLine,
              ),
              SizedBox(height: 10),
              TopPicksSilver(screenWidth: screenWidth),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomHeadLIneTextWidget(text: Assigns.thirdHeadLine),
                  Text(
                    Assigns.seeAll,
                    style: TextStyle(color: myColor, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 10),
              TrendingSilver(),
              SizedBox(height: 10),
              CustomHeadLIneTextWidget(text: Assigns.crazeDeals),
              CrazeDealSilver(screenWidth: screenWidth),
              SizedBox(height: 20),
              ReferSilver(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomHeadLIneTextWidget(text: Assigns.nearByStore),
                  Text(
                    Assigns.seeAll,
                    style: TextStyle(color: myColor, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(width: 10),
              NearBySilver(),
              SizedBox(height: 20),
              ViewAllButtonSilver()
            ],
          ),
        ),
      ),
    );
  }
}
