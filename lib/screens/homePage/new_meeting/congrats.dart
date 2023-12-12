import 'package:alleviz/screens/homePage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../LogIn/login.dart';
import '../../LogIn/widgets/logo.dart';

class CongratsScreen extends StatefulWidget {
  const CongratsScreen({super.key});

  @override
  State<CongratsScreen> createState() => _CongratsScreenState();
}

class _CongratsScreenState extends State<CongratsScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          // purash vai code here
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()));
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
                    Text(
                      'Your meeting is created',
                      style: GoogleFonts.getFont('Lato',
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
