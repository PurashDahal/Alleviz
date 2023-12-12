
import 'package:alleviz/screens/LogIn/newPw.dart';
import 'package:alleviz/screens/LogIn/widgets/logo.dart';
import 'package:alleviz/screens/spalsh/splashcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    void loginscreen() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => NewPassword()));
    }

    ;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(top: mq.height * 0.01), child: Logo()),
            SizedBox(
              height: mq.height * 0.05,
            ),
            Text(
              'We sent a code to your phone',
              style: GoogleFonts.getFont('Lato',
                  textStyle:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            Row(
              children: [
                Flexible(
                  child: Text(
                    'Enter 6 digit verification code sent to your phone ending with 11',
                    softWrap: true,
                    style: GoogleFonts.getFont('Lato',
                        textStyle: TextStyle(fontSize: 15)),
                  ),
                ),
                TextButton(
                    style: TextButton.styleFrom(foregroundColor: primaryColor),
                    onPressed: () {},
                    child: Text(
                      'Change',
                      style: GoogleFonts.getFont('Lato'),
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 40,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    hintText: '6-digit code',
                    hintStyle: GoogleFonts.getFont('Lato'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Resend code',
                style: GoogleFonts.getFont('Lato',
                    textStyle: TextStyle(fontSize: 12, color: primaryColor)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: mq.width * 0.9,
              height: mq.height * 0.06,
              // margin: EdgeInsets.only(bottom: mq.height * 0.02),
              child: SizedBox(
                height: mq.height * 0.05,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    loginscreen();
                  },
                  child: Text(
                    'SUBMIT ',
                    style: GoogleFonts.getFont('Lato',
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
