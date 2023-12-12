import 'package:alleviz/constants/colors.dart';
import 'package:alleviz/screens/homePage/new_meeting/new_meeting.dart';
import 'package:alleviz/screens/spalsh/splashcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import 'new_conference.dart';

class TimeDateScreen extends StatefulWidget {
  const TimeDateScreen({super.key});

  @override
  State<TimeDateScreen> createState() => _TimeDateScreenState();
}

class _TimeDateScreenState extends State<TimeDateScreen> {
  DateTime SELECTEDDATE = DateTime.now();
  TimeOfDay SELECTEDTIME = TimeOfDay.now();
  final TextEditingController _DateController = TextEditingController();
  final TextEditingController _TimeController = TextEditingController();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: SELECTEDTIME,
    );

    if (picked != null && picked != SELECTEDTIME) {
      setState(() {
        SELECTEDTIME = picked;
        _TimeController.text = picked.format(context);
      });
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: SELECTEDDATE,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != SELECTEDDATE) {
      setState(() {
        SELECTEDDATE = picked;
        _DateController.text = DateFormat('yyyy-MM-dd').format(SELECTEDDATE);
      });
    }
  }

  @override
  void dispose() {
    _DateController.dispose();
    _TimeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Scaffold(
      // resizeToAvoidBottomInset: false,

      body: Container(
        margin: EdgeInsets.only(top: mq.height * 0.05, left: mq.width * 0.01),
        child: Column(
          children: [
            //app bar code starts from here
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewMeetingScreen()));
                      },
                      icon: Icon(Icons.arrow_back)),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NewMeetingScreen()));
                          },
                          child: Container(
                            width: mq.width * 0.07,
                            height: mq.height * 0.03,
                            decoration: BoxDecoration(
                                color: greyColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(
                              '1',
                              style: GoogleFonts.getFont('Roboto',
                                  color: Colors.black),
                              // style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: mq.width * 0.08,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: mq.width * 0.07,
                            height: mq.height * 0.03,
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(
                              '2',
                              style: GoogleFonts.getFont('Roboto',
                                  color: Colors.white),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: mq.width * 0.08,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: mq.width * 0.07,
                            height: mq.height * 0.03,
                            decoration: BoxDecoration(
                                color: greyColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(
                              '3',
                              style: GoogleFonts.getFont('Roboto',
                                  color: Colors.black),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                ],
              ),
            ),
            // appbar code ends here
            Container(
              width: mq.width * 0.8,
              margin: EdgeInsets.only(top: mq.height * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Date Starts here
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Date ',
                        style: GoogleFonts.getFont('Roboto',
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    TextSpan(text: '*', style: TextStyle(color: Colors.red)),
                  ])),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      controller: _DateController,
                      // keyboardType: TextInputType.datetime,
                      // style: TextStyle(color: Colors.grey),

                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              _selectDate(context);
                            },
                            icon: Icon(Icons.calendar_month)),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        filled: true,
                        fillColor: greyColor,
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                      readOnly: true,
                      onTap: () {
                        _selectDate(context);
                      },
                    ),
                  ),
                  // Date ends here
                  SizedBox(
                    height: 10,
                  ),
                  // Clock starts here
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Time ',
                        style: GoogleFonts.getFont('Roboto',
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    TextSpan(text: '*', style: TextStyle(color: Colors.red)),
                  ])),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      // keyboardType: TextInputType.datetime,
                      controller: _TimeController,
                      // style: TextStyle(color: Colors.grey),

                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              _selectTime(context);
                            },
                            icon: FaIcon(FontAwesomeIcons.clock)),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        filled: true,
                        fillColor: greyColor,
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                      readOnly: true,
                      onTap: () {
                        _selectTime(context);
                      },
                    ),
                  ),
                  // Clock ends here
                ],
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: mq.height * 0.01),
              child: SizedBox(
                width: mq.width * 0.75,
                height: mq.height * 0.05,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewConference()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  child: Text(
                    'NEXT',
                    style: GoogleFonts.getFont('Roboto', fontSize: 14),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
