// import 'package:alleviz/widgets/tick_mark.dart';
import 'package:alleviz/constants/colors.dart';
import 'package:alleviz/screens/homePage/widgets/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/fonts.dart';
import '../homePage/new_meeting/new_meeting.dart';
import 'existingMeeting.dart';
import 'widgets/logo.dart';

class CreateMeeting extends StatefulWidget {
  const CreateMeeting({super.key});

  @override
  State<CreateMeeting> createState() => _CreateMeetingState();
}

class _CreateMeetingState extends State<CreateMeeting>
    with SingleTickerProviderStateMixin {
  late final GifController controller;
  @override
  void initState() {
    super.initState();
    controller = GifController(vsync: this);

    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
        return NewMeetingScreen();
      }));
    });
  }

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DefaultAppBar(),
              SizedBox(
                height: 40,
              ),
              Text(
                "Create new meeting!",
                style:
                    lato().copyWith(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Expanded(
                child: Gif(
                  image: AssetImage('assets/gifs/created.gif'),
                  autostart: Autostart.once,
                  repeat: ImageRepeat.noRepeat,
                  controller: controller,
                  placeholder: (context) => const Text(''),
                  onFetchCompleted: () {
                    controller.reset();
                    controller.forward();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
