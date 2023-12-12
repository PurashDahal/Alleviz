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
    return SingleChildScrollView(
      child: Stack(
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
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    height: deviceh * 0.7,
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
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 8.0),
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
                                      left: 8.0,
                                      right: 8.0,
                                    ),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5.0, left: 20, bottom: 5.0),
                                        child: Row(
                                          children: [
                                            Text(covisiter[index]),
                                            const Spacer(),
                                            IconButton(
                                                onPressed: () {
                                                  add(context, covisiter,
                                                      index);
                                                },
                                                icon: Icon(
                                                  Icons.cancel_outlined,
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
                              margin: EdgeInsets.only(right: 20, bottom: 10),
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
                                      "Add Covisitor",
                                      style: lato().copyWith(color: primary),
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
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  "RESCHEDULE MEETING",
                                  style: lato(),
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
      ),
    );
  }

  appBar() {
    return AppBar(
      title: const Text("Meeting Details"),
      actions: [NotificationIcon()],
    );
  }

  sure(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: const Text("Do you really want to reschedule this meeting?"),
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
          content: const Text("Do you really want to remove this meeting?"),
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
                  return MeetingDelete();
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

  resc(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: const Text("Do you really want to reschedule this meeting?"),
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
                  return const Reschedule();
                }));
              },
              child: const Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text("Ok"),
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
          content: const Text("Do you really want to remove the covisitor?"),
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
