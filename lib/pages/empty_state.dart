import 'package:flutter/material.dart';
import 'package:seven_day/designSystem/Thames.dart';

class DarkEmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 148,
          left: 66,
          right: 66,
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/bag.png',
                height: 210,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Success Order',
              style: succesOrder,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'We will delivery your package \nas soon as possible',
              textAlign: TextAlign.center,
              style: weWilDelivery,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 55,
              width: 200,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(50),
              // ),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffF94593),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
                child: Text(
                  'Done',
                  style: DoneTextstyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
