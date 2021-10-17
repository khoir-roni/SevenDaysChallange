import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirtsSplast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff13131E),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 234.0,
          left: 117,
          right: 117,
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/001_swords_1.png',
                width: 140,
                height: 140,
              ),
            ),
            SizedBox(
              height: 165,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'VENTURE',
                style: GoogleFonts.dmSerifDisplay(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
