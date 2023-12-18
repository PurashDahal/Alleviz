
import 'package:alleviz/screens/LogIn/existingMeeting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewMeeting extends StatefulWidget {
  const NewMeeting({super.key});

  @override
  State<NewMeeting> createState() => _NewMeetingState();
}

class _NewMeetingState extends State<NewMeeting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
         AlertDialog(
      title: Text(
        'Create new meeting with',
        style: GoogleFonts.getFont('Lato', textStyle: TextStyle(fontSize: 18)),
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ExisitingMeeting()),
            );
          },
          child: Text('Pick from Existence'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ExisitingMeeting()),
            );
          },
          child: Text('Add new'),
        ),
      ],
    )
   
    );
  }
}
