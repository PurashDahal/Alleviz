import 'package:alleviz/constants/colors.dart';
import 'package:alleviz/constants/fonts.dart';
import 'package:alleviz/screens/homePage/home_page.dart';
// import 'package:alleviz/screens/homePage/home_page.dart';
import 'package:alleviz/screens/homePage/widgets/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:lottie/lottie.dart';

class MeetingRemove extends StatefulWidget {
  const MeetingRemove({super.key});

  @override
  State<MeetingRemove> createState() => _MeetingRemoveState();
}

class _MeetingRemoveState extends State<MeetingRemove>
    with SingleTickerProviderStateMixin {
  late final GifController controller;
  @override
  void initState() {
    controller = GifController(vsync: this);
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
          "Covisitor has been removed",
          style: lato().copyWith(fontWeight: FontWeight.bold),
        ),
        Expanded(
            child: Gif(
                image: AssetImage('assets/gifs/end.gif'),
                repeat: ImageRepeat.noRepeat,
                autostart: Autostart.once,
                controller: controller,
                placeholder: (context) => const Text(''),
                onFetchCompleted: () {
                  controller.reset();
                  controller.forward();
                }))
      ],
    );
  }
}
