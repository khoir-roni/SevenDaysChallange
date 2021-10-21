import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class V2GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
              left: 40,
            ),
            child: Text(
              'Health First.',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 40,
            ),
            child: Text(
              'Exercise together with our best \ncommunity fit in the world',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
              left: 40,
              right: 40,
            ),
            child: Image.asset('assets/gallery.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 40,
              right: 40,
            ),
            child: Container(
              height: 55,
              width: 295,
              color: Color(0xffAFEA0D),
              child: TextButton(
                onPressed: () {
                  print('Shape My Body');
                },
                child: Text(
                  'Shape My Body',
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Center(child: Text('Terms & Conditions'))
        ],
      ),
    );
  }
}
