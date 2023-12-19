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
        Column(
          children: [
            SizedBox(
              height: deviceh * 0.15,
            ),
            Center(
              child: Container(
                height: deviceh * 0.5,
                width: devicew * 0.8,
                decoration: BoxDecoration(
                    color: wh, borderRadius: BorderRadius.circular(22)),
                child: Column(children: [
                  Row(
                    children: [
                      const Spacer(),
                      IconButton(
                        icon: Icon(
                          Icons.cancel,
                          color: primary,
                          size: 38,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
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
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    meeting.name,
                    style: bold(),
                  ),
                  Text(
                    meeting.id,
                    style: lato().copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Regarding Invoice | ${meeting.time}",
                    style: bold(),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0, top: 8.0),
                        child: Text("Co-Visitors List"),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 18.0,
                            right: 18.0,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(width: 0.6),
                                    right: bs,
                                    left: bs),
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, left: 20, bottom: 15.0),
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
                  // width: double.infinity,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                      color: end, borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28, vertical: 15),
                    child: Center(
                      child: Text(
                        "END MEETING",
                        style: lato()
                            .copyWith(color: wh, fontWeight: FontWeight.bold),
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
      centerTitle: true,
    );
  }

  sure(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.center,
          title: Text(
            "Do you really want to end this meeting?",
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
                  return const MeetingEnd();
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
