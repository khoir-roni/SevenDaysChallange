import 'package:flutter/material.dart';
import 'package:seven_day/designSystem/Thames.dart';

class DarkPricingScreen extends StatelessWidget {
  Widget headerWidget() {
    return Column(
      children: [
        Image.asset(
          'assets/Ilustration_icon.png',
          width: 164,
        ),
        SizedBox(height: 24),
        Text(
          'Pro Features',
          style: proTextStyle,
        ),
        SizedBox(height: 10),
        Text(
          'Unlock the winner modules \nand get more insights',
          style: unlockTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget listWidget(listText) {
    return Row(
      children: [
        Image.asset(
          'assets/icon_check.png',
          width: 26,
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          listText,
          style: listTextStyle,
        ),
      ],
    );
  }

  Widget buttonWidget() {
    return Container(
      height: 55,
      width: 319,
      decoration: BoxDecoration(
        color: Color(0xffE57C73),
        borderRadius: BorderRadius.circular(31),
      ),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 41,
            ),
            Text(
              'Subcribe Now',
              style: subcribeTextStyle,
            ),
            Image.asset(
              'assets/btn_arrow.png',
              height: 41,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff602880),
              Color(0xff0B073E),
            ],
            begin: FractionalOffset.bottomLeft,
            end: FractionalOffset.topRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 28, right: 28),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 80),
                headerWidget(),
                SizedBox(height: 50),
                Column(
                  children: [
                    listWidget('Unlock Our Top Charts'),
                    SizedBox(height: 27),
                    listWidget('Save More than 1,000 Docs'),
                    SizedBox(height: 27),
                    listWidget('24/7 Customer Support'),
                    SizedBox(height: 27),
                    listWidget('Track Company’s Spending'),
                  ],
                ),
                SizedBox(height: 58),
                buttonWidget(),
                SizedBox(height: 30),
                Text(
                  'Contact Us',
                  style: contactUsTextStyle,
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
