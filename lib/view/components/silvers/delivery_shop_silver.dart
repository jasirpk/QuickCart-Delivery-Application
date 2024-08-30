import 'package:flutter/material.dart';
import 'package:quick_cart/common/assigns.dart';
import 'package:quick_cart/view/components/widgets/custom_card.dart';
import 'package:quick_cart/view/components/widgets/custom_single_card.dart';

class DeliveryShopSilver extends StatelessWidget {
  const DeliveryShopSilver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
