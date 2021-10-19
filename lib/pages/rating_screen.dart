import 'package:flutter/material.dart';
import 'package:seven_day/designSystem/Thames.dart';

class RatingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181925),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 37, right: 37),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/pizza.png',
              height: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Pizza Ballado',
              style: PizzaBalado,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              '\$90.00',
              style: PrizeTextstyle,
            ),
            SizedBox(
              height: 90,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Was it delicious?',
                  style: LabelTextStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/btn.png',
                      height: 60,
                    ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    Image.asset(
                      'assets/btn-1.png',
                      height: 60,
                    ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    Image.asset(
                      'assets/btn-2.png',
                      height: 60,
                    ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    Image.asset(
                      'assets/btn-3.png',
                      height: 60,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 90,
            ),
            InkWell(
              onTap: () {
                print('rate');
              },
              child: Container(
                height: 55,
                width: 211,
                decoration: BoxDecoration(
                  color: Color(0xff34D186),
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Center(
                  child: Text(
                    'Rate Now',
                    style: RateTextStyle,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
