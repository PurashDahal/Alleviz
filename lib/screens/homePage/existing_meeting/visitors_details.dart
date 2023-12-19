import 'package:alleviz/constants/colors.dart';
import 'package:alleviz/screens/homePage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../LogIn/existingMeeting.dart';
import '../widgets/radio_button.dart';
import 'date_time.dart';

class VisitorsDetails extends StatelessWidget {
  const VisitorsDetails({super.key});

  get primaryColor => null;

  @override
  Widget build(BuildContext context) {
    // final List<String> options = ['Physical Visitor'];
    final mq = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                        // purash vai
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      icon: Icon(Icons.arrow_back)),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: mq.width * 0.07,
                            height: mq.height * 0.03,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(
                              '1',
                              style: GoogleFonts.getFont('Roboto',
                                  color: Colors.white),
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
                                    builder: (context) => DateTimeScreen()));
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
            // Visitor Details begins from here
            Container(
              margin: EdgeInsets.only(top: mq.height * 0.01),
              height: mq.height * 0.8,
              width: mq.width * 0.8,
              // color: Colors.red,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Visitor Details',
                      style: GoogleFonts.getFont('Roboto',
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Text('Name of the Visitor')
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Name of the Visitor ',
                          style: GoogleFonts.getFont('Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: '*', style: TextStyle(color: Colors.red)),
                    ])),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        // style: TextStyle(color: Colors.grey),

                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            filled: true,
                            fillColor: greyColor,
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: 'Purash'),
                      ),
                    ),
                    // Name of the visitors ends here
                    SizedBox(
                      height: 10,
                    ),
                    //Mobile number begins here
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Mobile Number ',
                          style: GoogleFonts.getFont('Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: '*', style: TextStyle(color: Colors.red)),
                    ])),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        // style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            filled: true,
                            fillColor: greyColor,
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: '9842098420'),
                      ),
                    ),
                    //Mobile number ends here
                    SizedBox(
                      height: 10,
                    ),
                    // Email begins here
                    Text(
                      'Email',
                      style: GoogleFonts.getFont('Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        // style: TextStyle(color: Colors.grey),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            filled: true,
                            fillColor: greyColor,
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: 'Purash@gmail.co'),
                      ),
                    ),
                    // Email ends here
                    SizedBox(
                      height: 10,
                    ),
                    //  Company name starts from here
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Company Name ',
                          style: GoogleFonts.getFont('Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: '*', style: TextStyle(color: Colors.red)),
                    ])),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        // keyboardType: TextInputType.number,
                        // style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            filled: true,
                            fillColor: greyColor,
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: 'DAccess Security Systems Pvt Ltd'),
                      ),
                    ),
                    //  Company name ends from here
                    SizedBox(
                      height: 10,
                    ),
                    // Designation starts from here
                    Text(
                      'Designation',
                      style: GoogleFonts.getFont('Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        // keyboardType: TextInputType.number,
                        // style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            filled: true,
                            fillColor: greyColor,
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: 'UI/UX'),
                      ),
                    ),
                    // Designation ends from here
                    SizedBox(
                      height: 10,
                    ),
                    // Visitor Catergory starts from here
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Visitor Category ',
                          style: GoogleFonts.getFont('Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: '*', style: TextStyle(color: Colors.red)),
                    ])),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        // keyboardType: TextInputType.number,
                        // style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            filled: true,
                            fillColor: greyColor,
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_drop_down_sharp)),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: 'Physical Visitor'),
                      ),
                    ),
                    // Visitor Catergory ends from here
                    SizedBox(
                      height: 10,
                    ),
                    // Address  starts from here
                    Text(
                      'Address',
                      style: GoogleFonts.getFont('Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        // keyboardType: TextInputType.number,
                        // style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            filled: true,
                            fillColor: greyColor,
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: 'Baner Pune'),
                      ),
                    ),
                    // Address  ends here
                    SizedBox(
                      height: 10,
                    ),
                    // Vehicle Number start from here
                    Text(
                      'Vehicle Number',
                      style: GoogleFonts.getFont('Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        // keyboardType: TextInputType.number,
                        // style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            filled: true,
                            fillColor: greyColor,
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: 'MH12RP7711'),
                      ),
                    ),
                    // Vehicle Number ends here
                    SizedBox(
                      height: 10,
                    ),
                    // Gender begins from here
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Gender ',
                          style: GoogleFonts.getFont('Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: '*', style: TextStyle(color: Colors.red)),
                    ])),
                    SizedBox(
                      height: 10,
                    ),
                    TwoRadioButtonsInRow(),
                    // Gender ends here
                  ],
                ),
              ),
            ),
            // Visitor Details ends  from here
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
                            builder: (context) => DateTimeScreen()));
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
