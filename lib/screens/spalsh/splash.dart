import 'package:alleviz/screens/LogIn/login.dart';
import 'package:flutter/material.dart';

import 'splashcolor.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation anim;
  late Animation anim2;
  late CurvedAnimation ca;
  late Animation posanim;
  late Tween<Alignment> alignTween;

  late Animation pad;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));

    anim = Tween(begin: 900.0, end: 150.0).animate(controller);
    anim2 = Tween(begin: 0.0, end: 75.0).animate(controller);
    posanim = Tween(begin: 0.0, end: 200.0).animate(controller);
    pad = Tween(begin: 50.0, end: 0.0).animate(controller);

    ca = CurvedAnimation(parent: controller, curve: Curves.easeOut);
    controller.forward();

    controller.addListener(() {
      setState(() {});
    });

    // Wait for 3 hours and then navigate to the LoginScreen
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          // Positioned(
          //   top: mq.height * 0.38,
          //   left: mq.width * 0.3,
          //   child: Container(
          //     width: mq.width * 0.4,
          //     height: mq.height * 0.18,
          //     decoration: BoxDecoration(
          //         color: Colors.white, borderRadius: BorderRadius.circular(90)),
          //     child: Image.asset(
          //       'assets/images/logo.png',
          //       scale: 1.2,
          //     ),
          //   ),
          // ),

          Center(
              child: Container(
            height: anim.value,
            width: anim.value,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(anim2.value)),
          )
              //     AnimatedScale(
              //   scale: 1.0,
              //   duration: Duration(seconds: 4),
              //   child: Container(
              //     height: 300,
              //     decoration:
              //         BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              //   ),
              // )
              // CircleAvatar(
              //   radius: anim.value,
              //   backgroundColor: Colors.white,
              // ),
              ),
          // Positioned(
          //   top: posanim.value,
          //    child: const Text("hello"))

          // Positioned(
          //   top: posanim.value,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Container(
          //         width: mq.width * 0.2,
          //         height: mq.height * 0.18,
          //         child: Image.asset(
          //           'assets/images/logo.png',
          //           scale: 1.2,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // AnimatedPositioned(
          //  top: alignTween.v,
          //   child: Image.asset(
          //     'assets/images/logo.png',
          //     scale: 1.2,
          //   ),
          // ),
          TweenAnimationBuilder(
            duration: Duration(milliseconds: 500),
            tween: Tween(begin: Alignment.topCenter, end: Alignment.center),
            builder:
                (BuildContext context, Alignment alignment, Widget? child) {
              return Align(
                alignment: alignment,
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/images/logo.png'),
                ),
              );
            },
          ),

          Positioned(
            top: mq.height * 0.8,
            child: ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (bounds) => const LinearGradient(colors: [
                Colors.black,
                Color.fromARGB(255, 181, 175, 175)
              ]).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
              child: Padding(
                padding: EdgeInsets.only(top: pad.value),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.red,
                    child: Center(
                        child: const Text('Alleviz',
                            style: TextStyle(fontSize: 40)))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
