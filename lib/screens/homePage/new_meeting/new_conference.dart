import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';
import '../../spalsh/splashcolor.dart';
import 'add_cov.dart';
import 'congrats.dart';
import 'new_meeting.dart';
import 'time_date.dart';

class NewConference extends StatelessWidget {
  const NewConference({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          left: mq.width * 0.01,
          top: mq.height * 0.05,
          right: mq.width * 0.01,
        ),
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
                                builder: (context) => TimeDateScreen()));
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
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TimeDateScreen()));
                          },
                          child: Container(
                            width: mq.width * 0.07,
                            height: mq.height * 0.03,
                            decoration: BoxDecoration(
                                color: greyColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(
                              '2',
                              style: GoogleFonts.getFont('Roboto',
                                  color: Colors.black),
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
                              '3',
                              style: GoogleFonts.getFont('Roboto',
                                  color: Colors.white),
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
            // appbar code ends here],
            // Code for other Textfield starts from here
            Container(
              width: mq.width * 0.8,
              margin: EdgeInsets.only(top: mq.height * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Code for Conference starts here
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Conference ',
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
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_drop_down_rounded)),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          filled: true,
                          fillColor: greyColor,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  // Code for Conference ends here
                  SizedBox(
                    height: 10,
                  ),
                  // Code for Branch To visit starts here
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Branch To Visit ',
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
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_drop_down_rounded)),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          filled: true,
                          fillColor: greyColor,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  // Code for Branch To visit ends here
                  SizedBox(
                    height: 10,
                  ),
                  // Code for Department To visit starts here
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Department To Visit ',
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
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_drop_down_rounded)),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          filled: true,
                          fillColor: greyColor,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  // Code for Department To visit ends here
                  SizedBox(
                    height: 10,
                  ),
                  // Code for Purpose starts here
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Purpose ',
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
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_drop_down_rounded)),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          filled: true,
                          fillColor: greyColor,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  // Code for Purpose ends here
                  SizedBox(
                    height: 10,
                  ),
                  // Code for Assets starts here
                  Text(
                    'Assets',
                    style: GoogleFonts.getFont('Roboto',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          filled: true,
                          fillColor: greyColor,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  // Code for Assets ends here
                ],
              ),
            ),

            // Code for other Textfield ends over here
            const Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: mq.height * 0.01),
              child: Column(
                children: [
                  SizedBox(
                    width: mq.width * 0.75,
                    height: mq.height * 0.05,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdCovisitor()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                        child: Text(
                          'ADD COVISITOR',
                          style: GoogleFonts.getFont('Roboto', fontSize: 14),
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
                                  builder: (context) => CongratsScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22)),
                        ),
                        child: Text(
                          'SAVE',
                          style: GoogleFonts.getFont('Roboto'),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
