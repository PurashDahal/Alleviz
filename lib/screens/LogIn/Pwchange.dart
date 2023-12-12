// import 'package:alleviz/widgets/tick_mark.dart';
import 'package:alleviz/screens/LogIn/login.dart';
import 'package:alleviz/screens/LogIn/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class PasswordChange extends StatefulWidget {
  const PasswordChange({super.key});

  @override
  State<PasswordChange> createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: mq.height,
          width: mq.width,
          margin: const EdgeInsets.only(left: 25, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: mq.width * 0.25, top: mq.height * 0.04),
                child: const Logo(),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Congratulations!',
                      style: GoogleFonts.getFont('Lato',
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    Text('Your password has been changed',
                        style: GoogleFonts.getFont('Lato',
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)))
                  ],
                ),
              ),
              Expanded(
                  child: LottieBuilder.asset("assets/animations/reset.json"))
            ],
          ),
        ),
      ),
    );
  }
}
