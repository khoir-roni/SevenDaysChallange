import 'package:flutter/material.dart';
import 'package:seven_day/designSystem/Thames.dart';

class DarkPricingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff602880),
              Color(0xff0B073E),
            ],
            begin: FractionalOffset.bottomLeft,
            end: FractionalOffset.topRight,
            // stops: [0, 0.1, 0],
            // tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
          children: [
            Text('Gradient color'),
            Image.asset(
              'assets/Ilustration_icon.png',
              width: 164,
            ),
            Text(
              'Pro Features',
              style: LabelTextStyle,
            ),
            Text(
              'Unlock the winner modules \nand get more insights',
              style: subTitle,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
