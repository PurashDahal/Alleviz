// import 'package:alleviz/widgets/tick_mark.dart';
import 'package:alleviz/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../homePage/new_meeting/new_meeting.dart';
import 'existingMeeting.dart';
import 'widgets/logo.dart';

class CreateMeeting extends StatefulWidget {
  const CreateMeeting({super.key});

  @override
  State<CreateMeeting> createState() => _CreateMeetingState();
}

class _CreateMeetingState extends State<CreateMeeting> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: mq.height,
          width: mq.width,
          margin: const EdgeInsets.only(left: 25, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                  Container(
                    margin: EdgeInsets.only(
                        left: mq.width * 0.09, top: mq.height * 0.04),
                    child: const Logo(),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      height: mq.height * 0.3,
                      width: mq.width * 0.8,
                      padding: EdgeInsets.only(top: mq.height * 0.05),
                      decoration: BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.circular(15)),
                      margin: EdgeInsets.only(
                          bottom: mq.height * 0.01, top: mq.height * 0.1),
                      child: Column(
                        children: [
                          Text(
                            'Create new meeting with',
                            style: GoogleFonts.getFont('Lato',
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: mq.width * 0.75,
                            height: mq.height * 0.05,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ExisitingMeeting()));
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22),
                                  ),
                                ),
                                child: Text(
                                  'PICK FROM EXISTENCE',
                                  style: GoogleFonts.getFont('Roboto',
                                      fontSize: 14),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: mq.width * 0.75,
                            height: mq.height * 0.05,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              NewMeetingScreen()));
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.blue,
                                  elevation: 0.1,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22)),
                                ),
                                child: Text(
                                  'ADD NEW',
                                  style: GoogleFonts.getFont('Roboto'),
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
