
import 'package:alleviz/screens/spalsh/splashcolor.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            scale: 2,
          ),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: 'Alle',
                    style: TextStyle(
                        color: Color.fromARGB(255, 26, 25, 25),
                        fontSize: 28,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'Viz',
                    style: TextStyle(
                        color: secondaryColor,
                        fontSize: 28,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
