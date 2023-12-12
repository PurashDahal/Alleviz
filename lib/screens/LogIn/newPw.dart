// import 'package:alleviz/screens/login_screen.dart';

import 'package:alleviz/screens/LogIn/Pwchange.dart';
import 'package:alleviz/screens/LogIn/widgets/logo.dart';
import 'package:alleviz/screens/LogIn/widgets/ticket.dart';
import 'package:alleviz/screens/spalsh/splashcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool _obsecureText = true;

  void showPassword() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    void passwordChange() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => PasswordChange()));
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
              'Choose a new password',
              style: GoogleFonts.getFont('Lato',
                  textStyle:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            Flexible(
              child: Text(
                'Create a new password that is atleast 8 characters long',
                softWrap: true,
                style: GoogleFonts.getFont('Lato',
                    textStyle: TextStyle(fontSize: 15)),
              ),
            ),
            SizedBox(
              height: 55,
            ),
            SizedBox(
              height: 40,
              child: TextField(
                obscureText: _obsecureText,
                keyboardType: TextInputType.visiblePassword,
                // obscureText: true,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    suffixIcon: IconButton(
                      onPressed: showPassword,
                      icon: Icon(
                        _obsecureText ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    hintText: 'New password',
                    hintStyle: GoogleFonts.getFont('Lato'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    hintText: 'Retype new password',
                    hintStyle: GoogleFonts.getFont('Lato'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                TickWidget(),
                Flexible(
                  child: Text(
                    'Required all devices to sign with new password',
                    softWrap: true,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
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
                    passwordChange();
                  },
                  child: Text(
                    'RESET PASSWORD ',
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
