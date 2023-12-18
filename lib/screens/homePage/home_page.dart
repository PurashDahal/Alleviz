// import 'package:alleviz/constants/colors.dart';
import 'package:alleviz/constants/colors.dart';
import 'package:alleviz/constants/fonts.dart';
import 'package:alleviz/constants/text.dart';
import 'package:alleviz/screens/LogIn/login.dart';
import 'package:alleviz/screens/homePage/modal.dart';
import 'package:alleviz/screens/homePage/widgets/create_meeting_button.dart';
import 'package:alleviz/screens/homePage/widgets/future_meeting.dart';
import 'package:alleviz/screens/homePage/widgets/meeting_history.dart';
import 'package:alleviz/screens/homePage/widgets/notification_icon.dart';
import 'package:alleviz/screens/homePage/widgets/today_meeting.dart';
import 'package:alleviz/screens/spalsh/splash.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool toggleOn = false;
  bool appBartoggle = true;
  void toggle() {
    setState(() {
      toggleOn = !toggleOn;
      appBartoggle = !appBartoggle;
    });
  }

  List<meetingModal> users = [
    meetingModal(
        name: "Pratik Kale",
        id: "DAccess",
        date: "20-03-2023",
        status: "Completed",
        time: "9:00 AM",
        pic: 'assets/homeScreen/pp.jpg'),
    meetingModal(
        name: "Rohit Parjane",
        id: "DAccess",
        date: "23-03-2023",
        status: "In progress",
        time: "8:00 AM",
        pic: 'assets/homeScreen/pp.jpg'),
    meetingModal(
        name: "Ganesh Galade",
        id: "DAccess",
        date: "02-03-2023",
        status: "Pending",
        time: "11:00 AM",
        pic: 'assets/homeScreen/pp.jpg'),
    meetingModal(
        name: "Samita Nalawade",
        id: "DAccess",
        date: "06-03-2023",
        status: "Pending",
        time: "12:00 AM",
        pic: 'assets/homeScreen/pp.jpg')
  ];
  List<meetingModal> futureUser = [
    meetingModal(
        name: "Rojik khan",
        id: "DAccess",
        date: "2023-12-04",
        status: "Pending",
        time: "9:00 AM",
        pic: 'assets/homeScreen/pp.jpg'),
    meetingModal(
        name: "Pratik khan",
        id: "DAccess",
        date: "2022-12-04",
        status: "Pending",
        time: "12:00 AM",
        pic: 'assets/homeScreen/pp.jpg')
  ];
  String appBarText1 = "Today's Meetings";
  String appBarText2 = "Future Meetings";
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size.height;

    return Scaffold(
        drawer: Drawer(
          width: MediaQuery.of(context).size.width * 0.85,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // DrawerHeader(
              //     child:
              //      Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Container(
              //       clipBehavior: Clip.hardEdge,
              //       decoration: const BoxDecoration(
              //           shape: BoxShape.circle, color: Color(0xFF2896FD)),
              //       height: 60.0,
              //       width: 60.0,
              //       child: FittedBox(
              //         child: Icon(
              //           Icons.person,
              //           color: wh,
              //         ),
              //       ),
              //     ),
              //     Text(
              //       user,
              //       style: bold(),
              //     ),
              //     Text(post),
              //     Text(id)
              //   ],
              // )),
              // Container(

              //   height: MediaQuery.of(context).size.height * 0.7,
              //   child:
              // Column(
              //     children: [
              //       Container(
              //         margin: const EdgeInsets.only(left: 10),
              //         child: InkWell(
              //           onTap: () {
              //             Navigator.push(context,
              //                 MaterialPageRoute(builder: (_) {
              //               return MeetingHistory();
              //             }));
              //           },
              //           child: Padding(
              //             padding: const EdgeInsets.all(0.0),
              //             child: Row(
              //               children: [
              //                 Icon(Icons.history),
              //                 SizedBox(
              //                   width: 10,
              //                 ),
              //                 Text(
              //                   "History",
              //                   style: bold(),
              //                 )
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //       const Spacer(),
              //       const Divider(
              //         thickness: 2.0,
              //       ),
              //       InkWell(
              //         onTap: () {
              //           Navigator.push(context, MaterialPageRoute(builder: (_) {
              //             return LoginScreen();
              //           }));
              //         },
              //         child: Container(
              //           margin: const EdgeInsets.only(left: 10, bottom: 20),
              //           child: Row(
              //             children: [
              //               Icon(Icons.logout),
              //               SizedBox(
              //                 width: 10,
              //               ),
              //               Text(
              //                 "Log out",
              //                 style: bold().copyWith(fontSize: 18),
              //               )
              //             ],
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              SingleChildScrollView(
                child: Container(
                  height: mq * 0.3,
                  // color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 38.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF2896FD)),
                          height: 80.0,
                          width: 80.0,
                          child: FittedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.person,
                                color: wh,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          user,
                          style: bold().copyWith(fontSize: 23),
                        ),
                        Text(
                          post,
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(id, style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                  // thickness: 2.0,
                  ),
              Container(
                height: mq * 0.58,
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return MeetingHistory();
                        }));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Row(
                          children: [
                            Icon(Icons.history),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "History",
                              style: bold().copyWith(fontSize: 23),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              const Divider(
                  // thickness: 2.0,
                  ),
              Container(
                  // height: mq * 0.11,
                  // color: Colors.red,
                  child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return SplashScreen();
                  }));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 20, bottom: 20),
                  child: Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Log out",
                        style: bold().copyWith(fontSize: 23),
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
        appBar: appBar(),
        // AppBar(
        //   title: Text(
        //     appBartoggle == true ? appBarText1 : appBarText2,
        //     style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
        //   ),
        //   actions: [
        //     IconButton(
        //       icon: toggleOn
        //           ? Icon(
        //               Icons.toggle_on_outlined,
        //               size: 33,
        //             )
        //           : Icon(
        //               Icons.toggle_off_outlined,
        //               size: 33,
        //             ),
        //       onPressed: toggle,
        //     ),
        //     NotificationIcon()
        //   ],
        // ),
        body: Builder(builder: (context) {
          return Column(
            children: [
              // Expanded(
              //   flex: 1,
              //   child: Container(
              //     color: Colors.red,
              //     child: Row(children: [
              //       IconButton(
              //         icon: Icon(Icons.menu),
              //         onPressed: () {
              //           Scaffold.of(context).openDrawer();
              //         },
              //       )
              //     ]),
              //   ),
              // ),
              Expanded(
                flex: 6,
                child: appBartoggle == true
                    ? TodayMeeting(
                        meetingUsers: users,
                      )
                    : FutureMeeting(meetingUsers: futureUser),
              ),
              CreateMeetingButton()
            ],
          );
        }));
  }

  appBar() {
    return AppBar(
      title: Text(
        appBartoggle == true ? appBarText1 : appBarText2,
        style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      leading: Builder(builder: (context) {
        return IconButton(
          icon: Icon(
            Icons.menu,
            size: 40,
            color: primary,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        );
      }),
      actions: [
        IconButton(
          icon: toggleOn
              ? Icon(
                  Icons.toggle_on_outlined,
                  size: 40,
                )
              : Icon(
                  Icons.toggle_off_outlined,
                  size: 40,
                ),
          onPressed: toggle,
        ),
        NotificationIcon(),
      ],
    );
  }

  body() {
    return Column(
      children: [
        Expanded(
          flex: 6,
          child: appBartoggle == true
              ? TodayMeeting(
                  meetingUsers: users,
                )
              : FutureMeeting(meetingUsers: futureUser),
        ),
        CreateMeetingButton()
      ],
    );
  }
}
