import 'package:alleviz/constants/colors.dart';
import 'package:alleviz/screens/LogIn/create_meeting.dart';
import 'package:alleviz/screens/homePage/existing_meeting/visitors_details.dart';
import 'package:alleviz/screens/homePage/modal/person.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExisitingMeeting extends StatelessWidget {
  const ExisitingMeeting({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Person> persons = [
      Person(
          imageUrl:
              'https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          name: 'Purash',
          position: 'Flutter Dev',
          Date: 'Visited on 2023/08/01'),
      Person(
          imageUrl:
              'https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          name: 'Purash',
          position: 'Flutter Dev',
          Date: 'Visited on 2023/08/01'),
    ];

    // final mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => CreateMeeting()));
            },
            icon: Icon(Icons.arrow_back)),
        title: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            hintText: 'Search Visitor',
            hintStyle: GoogleFonts.getFont('Roboto',
                textStyle: TextStyle(fontSize: 14)),
            suffixIcon: Icon(Icons.search),
          ),
        ),
      ),
      body: Container(
        color: tertiaryColor,
        child: ListView.builder(
          itemCount: persons.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => VisitorsDetails()));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(persons[index].imageUrl),
                    ),
                    title: Text(persons[index].name),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(persons[index].position),
                        Text(persons[index].Date)
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 0.1,
                  color: Colors.black,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
