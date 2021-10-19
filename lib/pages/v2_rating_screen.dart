import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightRatingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 50.0,
              left: 28,
              right: 28,
            ),
            child: Center(
              child: Image.asset(
                'assets/home office1 1.png',
                height: 210,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Enjoy Your Meal',
            style: GoogleFonts.poppins(
              color: Color(0xff121622),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'Please rate our experience',
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Color(0xff808EAB),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Image.asset(
            'assets/stars.png',
            height: 50,
          ),
          SizedBox(
            height: 36,
          ),
          Container(
            height: 130,
            width: 319,
            decoration: BoxDecoration(
              color: Color(0xffF8F8F8),
              borderRadius: BorderRadius.circular(17),
            ),
            child: Text(
              'Your message',
              style: GoogleFonts.poppins(
                color: Color(0xff808EAB),
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 55,
            width: 319,
            decoration: BoxDecoration(
              color: Color(0xff4074E6),
              borderRadius: BorderRadius.circular(13),
            ),
            child: Align(
              child: Text(
                'Submit Review',
                style: GoogleFonts.poppins(
                  color: Color(0xffFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
