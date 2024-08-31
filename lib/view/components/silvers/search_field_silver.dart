import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quick_cart/common/assigns.dart';
import 'package:quick_cart/common/style.dart';
import 'package:quick_cart/view/pages/notifications.dart';

class SearchFieldSilver extends StatelessWidget {
  const SearchFieldSilver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 270,
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(6)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Assigns.FieldInputLabel,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              SizedBox(width: 10),
              Icon(
                CupertinoIcons.search,
                color: myColor,
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => NotificationScreen()));
          },
          child: CircleAvatar(
            backgroundColor: Colors.white,
            maxRadius: 13,
            backgroundImage: AssetImage(Assigns.notification),
          ),
        ),
        Icon(
          Icons.sell_outlined,
          color: Colors.yellow,
          size: 30,
        ),
      ],
    );
  }
}
