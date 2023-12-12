import 'package:alleviz/screens/homePage/modal.dart';
import 'package:flutter/material.dart';

import 'meet_card.dart';

class FutureMeeting extends StatefulWidget {
  const FutureMeeting({super.key, required this.meetingUsers});
  final List<meetingModal> meetingUsers;

  @override
  State<FutureMeeting> createState() => _FutureMeetingState();
}

class _FutureMeetingState extends State<FutureMeeting> {
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
