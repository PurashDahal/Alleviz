import 'package:alleviz/constants/colors.dart';
import 'package:alleviz/constants/fonts.dart';
import 'package:alleviz/screens/homePage/existing_meeting/date_time.dart';
import 'package:alleviz/screens/homePage/existing_meeting/delete_meeting.dart';
import 'package:alleviz/screens/homePage/meeting_end.dart';
import 'package:alleviz/screens/homePage/modal.dart';
import 'package:alleviz/screens/homePage/new_meeting/add_cov.dart';
import 'package:alleviz/screens/homePage/widgets/covisitorRemove.dart';
import 'package:alleviz/screens/homePage/widgets/notification_icon.dart';
import 'package:alleviz/screens/homePage/widgets/reschedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'meeting_delete.dart';
import 'reschedule_method.dart';

class MeetingDetails2 extends StatefulWidget {
  const MeetingDetails2({
    super.key,
    required this.meeting,
  });
  final meetingModal meeting;

  @override
  State<MeetingDetails2> createState() => _MeetingDetails2State();
}

class _MeetingDetails2State extends State<MeetingDetails2> {
  @override
  Widget build(BuildContext context) {
    List<String> covisiter = [
      "Ramesh",
      "Suresh",
      "Ganesh",
      "Sanam",
    ];

    return Scaffold(
      appBar: appBar(),
      body: body(context, covisiter),
    );
  }

  body(context, covisiter) {
    final deviceh = MediaQuery.of(context).size.height;
    final devicew = MediaQuery.of(context).size.width;
    final bs = BorderSide(width: 0.6);
    return Stack(
      children: [
        Container(
          height: deviceh,
          width: devicew,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18), topRight: Radius.circular(18)),
            color: primary,
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: deviceh * 0.15,
              ),
              Center(
                child: Container(
                  height: deviceh * 0.55,
                  width: devicew * 0.8,
                  decoration: BoxDecoration(
                      color: wh, borderRadius: BorderRadius.circular(22)),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                            icon: Icon(
                              Icons.cancel,
                              color: primary,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(widget.meeting.pic),
                        ),
                      ),
                      width: 90.0,
                      height: 90.0,
                    ),
                    Text(
                      widget.meeting.name,
                      style: bold(),
                    ),
                    Text(
                      widget.meeting.id,
                      style: lato().copyWith(color: Colors.black),
                    ),
                    Text(
                      "Regarding Invoice | ${widget.meeting.time}",
                      style: bold(),
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 8.0),
                          child: Text("Co-Visiters List"),
                        )
                      ],
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    left: 7.0,
                                    right: 7.0,
                                  ),
                                  child: Container(
                                    // shape: RoundedRectangleBorder(
                                    //     borderRadius:
                                    //         BorderRadius.circular(0)),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(width: 0.6),
                                            right: bs,
                                            left: bs),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, left: 20, bottom: 5.0),
                                      child: Row(
                                        children: [
                                          Text(covisiter[index]),
                                          const Spacer(),
                                          IconButton(
                                              onPressed: () {
                                                add(context, covisiter, index);
                                              },
                                              icon: Icon(
                                                Icons.cancel_sharp,
                                                color: primary,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                              itemCount: covisiter.length,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (_) {
                                      return AdCovisitor();
                                    }));
                                  },
                                  child: Text(
                                    "ADD COVISITOR",
                                    style: lato().copyWith(
                                        color: primary,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          delete(context);
                        },
                        child: Container(
                          child: CircleAvatar(
                            backgroundColor: wh,
                            child: Icon(Icons.delete_outline),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          resc(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: reschedule,
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 28, vertical: 15),
                            child: Center(
                              child: Text(
                                "RESCHEDULE MEETING",
                                style: lato()
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  appBar() {
    return AppBar(
      title: const Text("Meeting Details"),
      centerTitle: true,
      actions: [NotificationIcon()],
    );
  }

  sure(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Do you really want to reschedule thiS meeting?"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: primary, foregroundColor: wh),
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return MeetingEnd();
                }));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text("Ok"),
              ),
            ),
          ],
        );
      },
    );
  }

  delete(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.center,

          title: Text(
            "Do you really want to remove this meeting?",
            style: TextStyle(fontSize: 18),
          ),
          content: SizedBox(
            height: 20,
          ),
          // actionsAlignment: MainAxisAlignment.center,
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: primary, foregroundColor: wh),
              child: const Text("Cancel"),
            ),
            Container(
              decoration: BoxDecoration(
                  // border: Border.all(color: primary, width: 1),
                  borderRadius: BorderRadius.circular(50)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const Reschedule();
                  }));
                },
                child: const Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Text("Ok"),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  resc(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.center,
          title: Text(
            "Do you really want to reschedule this meeting?",
            style: TextStyle(fontSize: 18),
          ),
          content: SizedBox(
            height: 20,
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: primary, foregroundColor: wh),
              child: const Text("Cancel"),
            ),
            Container(
              decoration: BoxDecoration(
                  // border: Border.all(color: primary, width: 1),
                  borderRadius: BorderRadius.circular(50)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const Reschedule();
                  }));
                },
                child: const Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Text("Ok"),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  add(context, covisitor, index) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.center,
          title: Text(
            "Do you really want to reschedule this meeting?",
            style: TextStyle(fontSize: 18),
          ),
          content: SizedBox(
            height: 20,
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: primary, foregroundColor: wh),
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const MeetingRemove();
                }));
                print(covisitor);
                setState(() {
                  covisitor.remove(covisitor[index]);
                });
                print(covisitor);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text("Ok"),
              ),
            ),
          ],
        );
      },
    );
  }
}
