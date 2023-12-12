import 'package:alleviz/constants/colors.dart';
import 'package:alleviz/screens/homePage/widgets/radio_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'conference_screen.dart';
import 'congratulation_screen.dart';

class AddCovisitor extends StatelessWidget {
  const AddCovisitor({super.key});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConferenceScreen()));
                    },
                    icon: Icon(Icons.arrow_back)),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Add Covisitors Details',
                  style: GoogleFonts.getFont('Roboto',
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              width: mq.width * 0.8,
              margin: EdgeInsets.only(top: mq.height * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Code for Covisitor starts here
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Covisitor Name ',
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
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          filled: true,
                          fillColor: greyColor,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  // Code for Covisitors ends here
                  SizedBox(
                    height: 10,
                  ),
                  // Code for Mobile No. starts here
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Mobile No. ',
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
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          filled: true,
                          fillColor: greyColor,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  // Code for Mobile No. ends here
                  SizedBox(
                    height: 10,
                  ),
                  // Code for Gender starts here
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Gender ',
                        style: GoogleFonts.getFont('Roboto',
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    TextSpan(text: '*', style: TextStyle(color: Colors.red)),
                  ])),
                  SizedBox(
                    height: 10,
                  ),
                  TwoRadioButtonsInRow(),

                  // Code for Gender end here
                ],
              ),
            ),
            Spacer(),
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
                                  builder: (context) => AddCovisitor()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                        child: Text(
                          'ADD ANOTHER COVISITOR',
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
                                  builder: (context) =>
                                      CongratulationScreen()));
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

            // ElevatedButton(onPressed: () {}, child: Text('hello'))
          ],
        ),
      ),
    );
  }
}
