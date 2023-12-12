import 'package:alleviz/constants/colors.dart';
import 'package:alleviz/screens/spalsh/splashcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import 'conference_screen.dart';
import 'visitors_details.dart';

class DateTimeScreen extends StatefulWidget {
  const DateTimeScreen({super.key});

  @override
  State<DateTimeScreen> createState() => _DateTimeScreenState();
}

class _DateTimeScreenState extends State<DateTimeScreen> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
        _timeController.text = picked.format(context);
      });
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _dateController.text = DateFormat('yyyy-MM-dd').format(selectedDate);
      });
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    _timeController.dispose();
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
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisitorsDetails()));
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
                                    builder: (context) => VisitorsDetails()));
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
                      controller: _dateController,
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
                      controller: _timeController,
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
                            builder: (context) => ConferenceScreen()));
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
