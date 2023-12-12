import 'package:alleviz/constants/fonts.dart';
import 'package:alleviz/screens/homePage/modal/notification_model.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<NotificationModal> notification = [
    NotificationModal(
        title: "Your meeting is with Amit sir after 15 min",
        time: "2 min",
        iswaiting: false),
    NotificationModal(
        title: """Visitor Pratik enters in premises""",
        time: "1hr",
        iswaiting: false),
    NotificationModal(
        title:
            """Your meeting is rejected by Namrata Pawar for Visitor Pratik Kaley from DAccess""",
        time: "2hrs ",
        iswaiting: false),
    NotificationModal(
        title: """Your meeting is scheduled with Amit sir at 11:00 AM""",
        time: "3hrs",
        iswaiting: false),
    NotificationModal(
        title: """Visitor Samita From SDS is waiting for your approval.""",
        time: "4hrs",
        iswaiting: true)
  ];
  bool flipY = true;
  bool drop = false;
  @override
  Widget build(BuildContext context) {
    void changedrop(bool change) {
      setState(() {
        if (change) {
          drop = true;
          print("become true");
        } else {
          drop = false;
          print("become false");
        }
      });
    }

    return Scaffold(
      appBar: appBar(),
      body: body(notification, context, flipY, drop, changedrop),
    );
  }

  appBar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Notifications",
        style: lato(),
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
    );
  }

  body(notification, context, flipY, drop, changedrop) {
    return ListView.builder(
        itemCount: notification.length,
        itemBuilder: (context, index) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            child: Column(
              children: [
                ListTile(
                  leading: IconButton(
                    icon: notification[index].iswaiting
                        ? Icon(Icons.question_mark)
                        : Icon(Icons.info),
                    onPressed: () {},
                  ),
                  title: Text(notification[index].title),
                  trailing: Column(
                    children: [
                      Transform.flip(
                        flipY: flipY,
                        child: Transform.rotate(
                            angle: 7.9,
                            child: InkWell(
                                onTap: () {
                                  // setState(() {
                                  //   // notification[index].iswaiting
                                  //   //     ? drop == true
                                  //   //     : false;
                                  //   if (notification[index].iswaiting) {
                                  //     drop == true;
                                  //     print("YES");
                                  //     print(drop);
                                  //   } else {
                                  //     drop == false;
                                  //     print("NO");
                                  //     print(drop);
                                  //   }
                                  // });
                                  changedrop(notification[index].iswaiting);
                                },
                                child: Icon(Icons.arrow_back_ios))),
                      ),
                      Text(notification[index].time)
                    ],
                  ),
                ),
                // Visibility(visible: drop, child: Text("hdh"))
              ],
            ),
          );

          //  Row(
          //   children: [
          //     IconButton(
          //         onPressed: () {},
          //         icon: notification[index].iswaiting
          //             ? Icon(Icons.question_mark)
          //             : Icon(Icons.info)),
          //     Container(
          //       color: Colors.red,
          //       child: Text(
          //         notification[index].title,
          //         softWrap: true,
          //       ),
          //     ),
          //     Align(
          //       alignment: Alignment.centerLeft,
          //       child: Container(
          //         color: Colors.red,
          //         child: Row(
          //           // mainAxisAlignment: MainAxisAlignment.end,
          //           children: [
          //             Column(
          //               children: [
          //                 Transform.rotate(
          //                     angle: 7.8, child: Icon(Icons.arrow_back_ios))
          //               ],
          //             ),
          //           ],
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          // );
        });
  }
}
