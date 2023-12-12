import 'package:alleviz/constants/fonts.dart';
import 'package:alleviz/screens/LogIn/create_meeting.dart';
import 'package:flutter/material.dart';

class CreateMeetingButton extends StatelessWidget {
  const CreateMeetingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return CreateMeeting();
          }));
        },
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.blue,
          ),
          height: 20,
          child: Center(
              child: Text(
            "Create Meeting",
            style: t1(),
          )),
        ),
      ),
    );
  }
}
