import 'package:flutter/material.dart';

import '../../spalsh/splashcolor.dart';

class DefaultAppBar2 extends StatelessWidget {
  const DefaultAppBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/logo.png",
                scale: 3,
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
        ),
      ],
    );
  }
}
