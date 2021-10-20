import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_day/designSystem/Thames.dart';

class BrightSignIn extends StatelessWidget {
  // widget form isian
  Widget formText(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.openSans(
            color: Color(0xff17171A),
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        TextField(
          obscureText: label == 'Password' ? true : false,
          style: GoogleFonts.openSans(
              textStyle: TextStyle(
            fontSize: 14,
            color: Color(0xFF000000),
          )),
          decoration: InputDecoration(
            fillColor: Color(0xffF3F3F3),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: BorderSide.none,
            ),
            // labelText: 'Email',
            hintText: hint,
            hintStyle: GoogleFonts.openSans(
              textStyle: TextStyle(
                color: Color(0xff6F7075),
                fontSize: 16,
              ),
            ),
            suffixIcon: label == 'Password'
                ? Icon(
                    Icons.visibility,
                    color: Color(0xff6F7075),
                  )
                : null,
            hoverColor: Color(0xffFFFFFF),
          ),
        ),
      ],
    );
  }

// Widget tombol
  Widget btnWidget(style, text, color) {
    var button = 0;
    return InkWell(
      onTap: () {
        button++;
        print(button);
      },
      child: Container(
        height: 55,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60.0),
          color: Color(color),
          border: Border.all(
            color: Color(0xffD3D3D3),
            width: 1,
          ),
        ),
        child: Center(
            child: Text(
          text,
          style: style,
        )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 64,
            left: 28,
            right: 28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/list.png',
                  height: 279,
                ),
              ),
              formText('Email Address', 'Email'),
              SizedBox(
                height: 20,
              ),
              formText('Password', '**********'),
              SizedBox(
                height: 50,
              ),
              btnWidget(signInTextStyle, 'Sign in', 0xff5468FF),
              SizedBox(
                height: 16,
              ),
              btnWidget(newAccountTextStyle, 'Create New Account', 0x00FFFFFF),
            ],
          ),
        ),
      ),
    );
  }
}
