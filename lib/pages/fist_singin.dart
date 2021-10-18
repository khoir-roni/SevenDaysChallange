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
            SizedBox(
              height: 70,
            ),
            TextField(
              style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                fontSize: 14,
                color: Color(0xffFFFFFF),
              )),
              decoration: InputDecoration(
                fillColor: Color(0xff262A34),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: BorderSide.none,
                ),
                // labelText: 'Email',
                hintText: 'Email',
                hintStyle: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    color: Color(0xff6F7075),
                    fontSize: 16,
                  ),
                ),

                hoverColor: Color(0xffFFFFFF),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              obscureText: true,
              style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                fontSize: 14,
                color: Color(0xffFFFFFF),
              )),
              decoration: InputDecoration(
                fillColor: Color(0xff262A34),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: BorderSide.none,
                ),
                // labelText: 'Email',
                hintText: 'Password',
                hintStyle: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    color: Color(0xff6F7075),
                    fontSize: 16,
                  ),
                ),
                suffixIcon: Icon(
                  Icons.visibility,
                  color: Color(0xff6F7075),
                ),
                hoverColor: Color(0xffFFFFFF),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              alignment: Alignment(1, 0.5),
              child: Text(
                'Forgot My Password',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Color(0xff6A6B70),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 117,
            ),
            Container(
              height: 55,
              width: 295,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffFCAC15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                    
                  ),
                ),
                child: Text(
                  'Sign In',
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                    color: Color(0xff6B4909),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account?",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Sign Up',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
