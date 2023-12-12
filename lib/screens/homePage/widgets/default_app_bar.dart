import 'package:flutter/material.dart';

import '../../spalsh/splashcolor.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
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
        ),
      ],
    );
  }
}
