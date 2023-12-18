import 'package:alleviz/constants/colors.dart';
import 'package:alleviz/screens/homePage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../LogIn/login.dart';
import '../../LogIn/widgets/logo.dart';

class CongratulationScreen extends StatefulWidget {
  const CongratulationScreen({super.key});

  @override
  State<CongratulationScreen> createState() => _CongratulationScreenState();
}

class _CongratulationScreenState extends State<CongratulationScreen>
    with SingleTickerProviderStateMixin {
  late final GifController controller;
  @override
  void initState() {
    controller = GifController(vsync: this);
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffold,
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
              ),
              Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Gif(
                    image: AssetImage('assets/gifs/created2.gif'),
                    repeat: ImageRepeat.noRepeat,
                    autostart: Autostart.once,
                    controller: controller,
                    placeholder: (context) => const Text(''),
                    onFetchCompleted: () {
                      controller.reset();
                      controller.forward();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
