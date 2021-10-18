import 'package:flutter/material.dart';
import 'package:seven_day/designSystem/Thames.dart';

class V2EmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B1B33),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/chart.png',
            ),
            SizedBox(
              height: 67,
            ),
            Text(
              'Boost Profit!',
              style: BoostProfit,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Our tools are helping business \nto grow much faster',
              style: OurTool,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 59,
            ),
            Image.asset(
              'assets/rocket.png',
              height: 65,
            ),
          ],
        ),
      ),
    );
  }
}
