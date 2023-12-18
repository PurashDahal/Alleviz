import 'package:alleviz/constants/colors.dart';
import 'package:alleviz/screens/homePage/meetin_details.dart';
import 'package:alleviz/screens/homePage/widgets/rescheduling_meeting_details.dart';
import 'package:flutter/material.dart';

import '../../../constants/fonts.dart';
import '../modal.dart';

class MeetCard extends StatelessWidget {
  const MeetCard({super.key, required this.meeting});
  final meetingModal meeting;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
      child: InkWell(
        onTap: () {
          if (meeting.status == "Pending") {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return MeetingDetails2(
                meeting: meeting,
              );
            }));
          } else {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return MeetingDetails(
                meeting: meeting,
              );
            }));
          }
        },
        child: Card(
            color: meeting.status == "Completed"
                ? complete
                : meeting.status == "In progress"
                    ? inProgress
                    : inPending,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text(meeting.date)],
                  ),
                  userRow(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    meeting.status,
                    style: bold().copyWith(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )),
      ),
    );
  }

  userRow() {
    return Row(
      children: [
        Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/homeScreen/pp.jpg'),
                ),
              ),
              width: 30.0,
              height: 30.0,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  meeting.name,
                  style: bold(),
                ),
                Text(meeting.id)
              ],
            ),
          ],
        ),
        const Spacer(),
        Text(meeting.time, style: bold().copyWith(fontWeight: FontWeight.w500))
      ],
    );
  }
}
