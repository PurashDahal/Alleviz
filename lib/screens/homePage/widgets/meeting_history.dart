import 'package:alleviz/constants/fonts.dart';
import 'package:alleviz/screens/homePage/widgets/notificationModal.dart';
import 'package:flutter/material.dart';

class MeetingHistory extends StatelessWidget {
  MeetingHistory({super.key});
  final List<HistoryModal> history = [
    HistoryModal("Meeting regarding invoice",
        "conducted from 9:00 am to 10:00 am ", "1 Hr"),
    HistoryModal("Meeting regarding Cafelive",
        "conducted from 10:00 am to 11:00 am ", "1 Hr"),
    HistoryModal("Meeting regarding invoice",
        "conducted from 11:00 am to 12:00 pm ", "1 Hr"),
    HistoryModal("Meeting regarding invoice",
        "conducted from 12:00 pm to 1:00 pm ", "1 Hr"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meeting History",
          style: t2(),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: body(),
    );
  }

  body() {
    return ListView.builder(
        itemCount: history.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.history_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            history[index].title,
                            style: small(),
                          ),
                          Text(
                            history[index].subtitle,
                            style: small(),
                          )
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Duration",
                            style: small(),
                          ),
                          Text(
                            history[index].duration,
                            style: small(),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
