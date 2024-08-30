import 'package:flutter/material.dart';

class CustomSingleCard extends StatelessWidget {
  final String image;
  final String text;

  const CustomSingleCard({required this.image, required this.text});
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.contain),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          text,
          style: TextStyle(fontFamily: 'Quicksand'),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
