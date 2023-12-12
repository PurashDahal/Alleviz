import 'package:alleviz/constants/fonts.dart';
import 'package:alleviz/screens/homePage/home_page.dart';
import 'package:alleviz/screens/homePage/widgets/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MeetingReschedule extends StatefulWidget {
  const MeetingReschedule({super.key});

  @override
  State<MeetingReschedule> createState() => _MeetingRescheduleState();
}

class _MeetingRescheduleState extends State<MeetingReschedule> {
  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return MyHomePage();
      }));
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
          "Your Meeting has been rescheduled",
          style: lato().copyWith(fontWeight: FontWeight.bold),
        ),
        Expanded(child: LottieBuilder.asset('assets/animations/end.json'))
      ],
    );
  }
}
