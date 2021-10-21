import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:seven_day/designSystem/Thames.dart';

class SecondRandomScreen extends StatefulWidget {
  @override
  State<SecondRandomScreen> createState() => _SecondRandomScreenState();
}

class _SecondRandomScreenState extends State<SecondRandomScreen> {
  int selectedIndex = -1;
  Widget boxDays(
    index,
    days,
    date,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
          height: 100,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Color(0xffffffff)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 53),
                  selectedIndex == index
                      ? Stack(
                          children: [
                            Container(
                              height: 25,
                              width: 27,
                              child: Image.asset(
                                'assets/Rectangle 17.png',
                                height: 25,
                                width: 27,
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 27,
                              child: Center(
                                child: Image.asset(
                                  'assets/fi_check.png',
                                  height: 16,
                                  width: 16,
                                ),
                              ),
                            ),
                          ],
                        )
                      : SizedBox(
                          height: 25,
                          width: 27,
                        ),
                ],
              ),
              Text(
                days,
                style: daysTextStyle,
              ),
              SizedBox(height: 4),
              Text(
                date,
                style: dateTextStyle,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/hotel.png'),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Arrina La',
                          style: nameTextStyle,
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Bali, Dekat Bandung',
                          style: locationTextStyle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 26),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About',
                        style: aboutTextStyle,
                      ),
                      Text(
                        'Pantai Pandawa adalah salah satu para \nkawasan wisata di area Kuta selatan sana \nKabupaten Dekat Bandung, Bali.',
                        style: descriptionTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(height: 28),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Booking Now',
                        style: aboutTextStyle,
                      ),
                      SizedBox(height: 12),
                      Container(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            boxDays(0, 'THU', "19 JAN"),
                            boxDays(1, 'FRI', "20 JAN"),
                            boxDays(2, 'SAT', "21 JAN"),
                            boxDays(3, 'SUN', "22 JAN"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '\$22,800',
                                style: totalPrizeTextStyle,
                              ),
                              Text(
                                '/night',
                                style: timeTextStyle,
                              )
                            ],
                          ),
                          SizedBox(width: 28),
                          Container(
                            height: 60,
                            width: 220,
                            decoration: BoxDecoration(
                              color: Color(0xff3F6DF6),
                              borderRadius: BorderRadius.circular(19),
                            ),
                            child: Center(
                              child: Text(
                                'Continue',
                                style: continueTextStyle,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
