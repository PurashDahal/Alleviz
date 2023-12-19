import 'package:alleviz/screens/LogIn/existingMeeting.dart';
import 'package:alleviz/screens/homePage/existing_meeting/visitors_details.dart';
import 'package:alleviz/screens/homePage/home_page.dart';
import 'package:alleviz/screens/homePage/new_meeting/time_date.dart';
import 'package:alleviz/screens/homePage/widgets/radio_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';
import '../../LogIn/create_meeting.dart';
import '../../spalsh/splashcolor.dart';

class NewMeetingScreen extends StatefulWidget {
  const NewMeetingScreen({super.key});

  @override
  State<NewMeetingScreen> createState() => _NewMeetingScreenState();
}

class _NewMeetingScreenState extends State<NewMeetingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Container(
            child: AlertDialog(
              content: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.height * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Create new meeting with',
                      style: lato().copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return ExisitingMeeting();
                        }));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "PICK FROM EXISTANCE",
                                style: lato().copyWith(
                                    color: wh,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12),
                              ),
                              Icon(
                                Icons.touch_app_outlined,
                                color: wh,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return VisitorsDetails();
                        }));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                            border: Border.all(color: primary),
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "ADD NEW",
                                style: lato().copyWith(
                                    color: primary,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final List<String> options = ['Physical Visitor'];
    final mq = MediaQuery.of(context).size;

    return PopScope(
      canPop: true,
      onPopInvoked: (value) =>
          Navigator.push(context, MaterialPageRoute(builder: (_) {
        return MyHomePage();
      })),
      child: Scaffold(
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
                                  color: primaryColor,
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
                        TextSpan(
                            text: '*', style: TextStyle(color: Colors.red)),
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
                          ),
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
                        TextSpan(
                            text: '*', style: TextStyle(color: Colors.red)),
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
                          ),
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
                          ),
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
                        TextSpan(
                            text: '*', style: TextStyle(color: Colors.red)),
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
                          ),
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
                          ),
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
                        TextSpan(
                            text: '*', style: TextStyle(color: Colors.red)),
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
                          ),
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
                          ),
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
                          ),
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
                        TextSpan(
                            text: '*', style: TextStyle(color: Colors.red)),
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
                              builder: (context) => TimeDateScreen()));
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
      ),
    );
  }
}
