import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final String text;
  final String image;
  final String subText;

  const CustomCardWidget(
      {super.key,
      required this.text,
      required this.image,
      required this.subText});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 6,
          child: Container(
            height: 75,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 18,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color.fromARGB(255, 172, 52, 193),
                  ),
                  child: Center(
                    child: Text(
                      text,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.contain),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          subText,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'Quicksand'),
        )
      ],
    );
  }
}
