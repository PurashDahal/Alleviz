import 'package:alleviz/constants/colors.dart';
import 'package:alleviz/constants/fonts.dart';
import 'package:alleviz/screens/homePage/meeting_end.dart';
import 'package:alleviz/screens/homePage/modal.dart';
import 'package:alleviz/screens/homePage/widgets/notification_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MeetingDetails extends StatelessWidget {
  const MeetingDetails({
    super.key,
    required this.meeting,
  });
  final meetingModal meeting;

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
        Column(
          children: [
            SizedBox(
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
                        image: AssetImage(meeting.pic),
                      ),
                    ),
                    width: 90.0,
                    height: 90.0,
                  ),
                  Text(
                    meeting.name,
                    style: bold(),
                  ),
                  Text(
                    meeting.id,
                    style: lato().copyWith(color: Colors.black),
                  ),
                  Text(
                    "Regarding Invoice | ${meeting.time}",
                    style: bold(),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 8.0),
                        child: Text("Co-Visiters List"),
                      )
                    ],
                  ),
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
                                borderRadius: BorderRadius.circular(0)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0, left: 20, bottom: 5.0),
                              child: Text(covisiter[index]),
                            ),
                          ),
                        );
                      },
                      itemCount: covisiter.length,
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: InkWell(
                onTap: () {
                  sure(context);
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: end, borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "END MEETING",
                        style: lato().copyWith(color: wh),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
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
          content: const Text("Do you really want to end this meeting?"),
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

}
