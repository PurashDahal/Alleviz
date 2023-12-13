import 'package:alleviz/constants/colors.dart';
import 'package:alleviz/screens/LogIn/verification.dart';
import 'package:alleviz/screens/LogIn/widgets/logo.dart';
import 'package:alleviz/screens/homePage/widgets/default_app_bar.dart';
import 'package:alleviz/screens/homePage/widgets/default_app_bar2.dart';
import 'package:alleviz/screens/spalsh/splashcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});
  // final CachedNetworkImageProvider gifProvider =
  //     const CachedNetworkImageProvider('assets/gifs/forgotpw.gif');
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    void Verification() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => VerificationScreen()));
    }

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: scaffold,
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 25, right: 25, bottom: mq.height * 0.01),
        child: SizedBox(
          height: mq.height * 0.06,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              // loginScreen();
              Verification();
            },
            child: Text(
              'RESET PASSWORD',
              style: GoogleFonts.getFont(
                'Lato',
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(top: mq.height * 0.01),
                child: DefaultAppBar2()),
            SizedBox(
              height: mq.height * 0.05,
            ),
            Text(
              'Forgot Password?',
              style: GoogleFonts.getFont('Lato',
                  textStyle:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            Text(
              'Reset your password using OTP',
              style: GoogleFonts.getFont('Lato',
                  textStyle: TextStyle(fontSize: 15)),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: mq.height * 0.06,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    hintText: 'Email or Phone',
                    hintStyle: GoogleFonts.getFont('Lato',
                        textStyle: TextStyle(
                          fontSize: 15,
                        )),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Expanded(child: Image.asset("assets/gifs/forgotpw.gif"))
            // Expanded(
            //   child: CachedNetworkImage(
            //     imageUrl: 'assets/gifs/forgotpw.gif',
            //     cacheKey: 'forgot_password_gif',
            //     imageBuilder: (context, imageProvider) {
            //       return Image(image: imageProvider);
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
