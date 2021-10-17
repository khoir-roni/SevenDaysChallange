import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FIstSignin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181A20),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 70,
          left: 40,
          right: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/UroBtn.png',
              width: 50,
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              'Welcome back.\nLet’s make money.',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Color(0xff262A34),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
                labelText: 'Password',
                hintText: 'anggarisky@bwa.com',
                hoverColor: Color(0xffFFFFFF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
