import 'package:alleviz/constants/colors.dart';
import 'package:alleviz/constants/fonts.dart';
import 'package:alleviz/screens/homePage/home_page.dart';
import 'package:alleviz/screens/homePage/widgets/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:lottie/lottie.dart';

class MeetingDelete extends StatefulWidget {
  const MeetingDelete({super.key});

  @override
  State<MeetingDelete> createState() => _MeetingDeleteState();
}

class _MeetingDeleteState extends State<MeetingDelete>
    with SingleTickerProviderStateMixin {
  late final GifController controller;
  @override
  void initState() {
    // TODO: implement initState
    controller = GifController(vsync: this);

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
      backgroundColor: scaffold,
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
          "Your Meeting has been removed",
          style: lato().copyWith(fontWeight: FontWeight.bold),
        ),
        Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Gif(
              image: AssetImage('assets/gifs/end.gif'),
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
    );
  }
}
