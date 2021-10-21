import 'package:flutter/material.dart';
import 'package:seven_day/pages/dark_pricing_screen.dart';
import 'package:seven_day/pages/empty_state.dart';
import 'package:seven_day/pages/first_splast.dart';
import 'package:seven_day/pages/fist_singin.dart';
import 'package:seven_day/pages/get_started_page.dart';
import 'package:seven_day/pages/pricing_screen.dart';
import 'package:seven_day/pages/random_screen.dart';
import 'package:seven_day/pages/rating_screen.dart';
import 'package:seven_day/pages/second_splash.dart';
import 'package:seven_day/pages/v2_empty_state.dart';
import 'package:seven_day/pages/v2_first_sign_in.dart';
import 'package:seven_day/pages/v2_get_started_screen.dart';
import 'package:seven_day/pages/v2_rating_screen.dart';

void main() => runApp(SevenDays());

class SevenDays extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: RandomScreen(),
    );
  }
}
