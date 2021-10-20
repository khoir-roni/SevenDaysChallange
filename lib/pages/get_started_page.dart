import 'package:flutter/material.dart';
import 'package:seven_day/designSystem/Thames.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/Background_Startedscreen.png',
                  ),
                  fit: BoxFit.fitWidth),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 500,
              left: 74,
              right: 74,
            ),
            child: Text(
              'Maximize Revenue',
              style: maximumRevenu,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 550,
              right: 37,
              left: 37,
            ),
            child: Text(
              'Gain more profit from cryptocurrency \nwithout any risk involved',
              style: subTitle,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 630 ,
              left: 147,
              right: 147,
            ),
            child: Image.asset(
              'assets/PurpleBtn.png',
              height: 80,
              width: 80,
            ),
          ),
        ],
      ),
    );
  }
}
