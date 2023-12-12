import 'package:alleviz/screens/homePage/modal.dart';
import 'package:flutter/material.dart';

import 'meet_card.dart';


class TodayMeeting extends StatefulWidget {
  const TodayMeeting({super.key, required this.meetingUsers});
  final List<meetingModal> meetingUsers;

  @override
  State<TodayMeeting> createState() => _TodayMeetingState();
}

class _TodayMeetingState extends State<TodayMeeting> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.meetingUsers.length,
        itemBuilder: (context, index) {
          return MeetCard(
            meeting: widget.meetingUsers[index],
          );
        });
  }
}
