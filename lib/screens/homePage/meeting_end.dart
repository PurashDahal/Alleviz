import 'package:alleviz/constants/fonts.dart';
// import 'package:alleviz/screens/homePage/home_page.dart';
import 'package:alleviz/screens/homePage/widgets/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MeetingEnd extends StatefulWidget {
  const MeetingEnd({super.key});

  @override
  State<MeetingEnd> createState() => _MeetingEndState();
}

class _MeetingEndState extends State<MeetingEnd> {
  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(const Duration(seconds: 2), () {
      // Navigator.push(context, MaterialPageRoute(builder: (_) {
      //   return MyHomePage();
      // }

      // ));
      Navigator.pop(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  body() {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        DefaultAppBar(),
        SizedBox(
          height: 50,
        ),
        Text(
          "Congratulations!",
          style: lato().copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          "Your Meeting is Ended",
          style: lato().copyWith(fontWeight: FontWeight.bold),
        ),
        Expanded(child: LottieBuilder.asset('assets/animations/end.json'))
      ],
    );
  }
}
