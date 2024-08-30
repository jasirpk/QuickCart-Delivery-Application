import 'package:flutter/material.dart';

import 'package:quick_cart/common/assigns.dart';
import 'package:quick_cart/view/components/widgets/custom_card.dart';
import 'package:quick_cart/view/components/widgets/custom_single_card.dart';

class DeliverShopsSingleSiver extends StatelessWidget {
  const DeliverShopsSingleSiver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
