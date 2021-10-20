import 'package:flutter/material.dart';
import 'package:seven_day/designSystem/Thames.dart';

class PricingScreen extends StatefulWidget {
  @override
  State<PricingScreen> createState() => _PricingScreenState();
}

class _PricingScreenState extends State<PricingScreen> {
  int selectedIndex = -1;
  Widget header() {
    return Column(
      children: [
        Image.asset(
          'assets/cronw.png',
          height: 100,
        ),
        Text(
          'Which one you wish \nto Upgrade?',
          style: whichTextStyle,
        ),
      ],
    );
  }

  Widget checkLish(
    int index,
    String imageUrl,
    String title,
    String subTitle,
    String subSubTitle,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 100,
        width: 315,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: selectedIndex == index
                  ? Color(0xff6050E7)
                  : Color(0xffD9DEEA),
            )),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16,
            left: 17,
            bottom: 23,
            right: 27,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                imageUrl,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 7,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: titleTextStyle,
                    ),
                    Row(
                      children: [
                        Text(
                          subTitle,
                          style: subTitleTextStyle,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          subSubTitle,
                          style: purpleSubTitleTextStyle,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 0,
                  left: 41,
                ),
                child: selectedIndex == index
                    ? Image.asset(
                        'assets/icon_check_purple.png',
                        width: 26,
                      )
                    : SizedBox(
                        width: 26,
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buttomBar() {
    return GestureDetector(
      onTap: () {
        print('Upgrade Now');
      },
      child: Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xff6050E7),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upgrade Now',
                  style: upgradeTextStyle,
                ),
                Image.asset(
                  'assets/arrow_right.png',
                  height: 20,
                ),
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
          child: Column(
            children: [
              header(),
              SizedBox(
                height: 50,
              ),
              checkLish(
                1,
                'assets/pig_icon.png',
                'Money Security',
                'Support',
                '24/7',
              ),
              SizedBox(
                height: 24,
              ),
              checkLish(
                2,
                'assets/list.png',
                'Automation',
                'We provide',
                'Invoice',
              ),
              SizedBox(
                height: 24,
              ),
              checkLish(
                3,
                'assets/dollar_icon.png',
                'Balance Report',
                'can up to',
                '10K',
              ),
              Image.asset('assets/list.png'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: buttomBar(),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Color(0xff6050E7),
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Padding(
      //         padding: const EdgeInsets.only(
      //           top: 21,
      //           left: 30,
      //         ),
      //         child: Text(
      //           'Upgrade Now',
      //           style: UpgradeTextStyle,
      //         ),
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Padding(
      //         padding: const EdgeInsets.only(
      //           top: 23,
      //           left: 126,
      //           right: 30,
      //         ),
      //         child: Image.asset(
      //           'assets/arrow_right.png',
      //           height: 24,
      //           width: 24,
      //         ),
      //       ),
      //       label: '',
      //     ),
      //   ],
      // ),
    );
  }
}
