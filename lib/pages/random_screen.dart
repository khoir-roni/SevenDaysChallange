import 'package:flutter/material.dart';
import 'package:seven_day/designSystem/Thames.dart';

class RandomScreen extends StatelessWidget {
  Widget stackWidget() {
    return Container(
      height: 140,
      width: 315,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
          bottom: 14,
          right: 16,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/icon_burger.png',
                  height: 80,
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_minus.png',
                        height: 22,
                      ),
                      Text('2'),
                      Image.asset(
                        'assets/icon_plus.png',
                        height: 22,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Burger Malleta',
                    style: menuTextStyle,
                  ),
                  Text(
                    'McTheone',
                    style: cafeTextStyle,
                  ),
                ],
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  '\$90',
                  style: priceTextStyle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget information() {
    return Container(
      width: 315,
      height: 161,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffffffff),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informations',
              style: infoTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub total',
                  style: billTextStyle,
                ),
                Text(
                  '\$600.00',
                  style: infoTextStyle,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery',
                  style: billTextStyle,
                ),
                Text(
                  '\$80.00',
                  style: infoTextStyle,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: billTextStyle,
                ),
                Text(
                  '\$680.00',
                  style: infoTextStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget bottonWidget(
    String textBtn,
    color,
    textStyle,
  ) {
    return Container(
      width: 327,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Align(
        child: Text(
          textBtn,
          style: textStyle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text(
                'My Shopping Cart',
                style: myShoppingTextStyle,
              ),
              SizedBox(
                height: 30,
              ),
              stackWidget(),
              SizedBox(
                height: 26,
              ),
              stackWidget(),
              SizedBox(
                height: 26,
              ),
              information(),
              SizedBox(
                height: 60,
              ),
              bottonWidget('Checkout Now', kuning, checkoutTextStyle),
              SizedBox(
                height: 16,
              ),
              bottonWidget('Save To Wishlist', abuAbu, saveToWishlistTextStyle),
            ],
          ),
        ),
      ),
    );
  }
}
