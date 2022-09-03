import 'package:flutter/material.dart';
import 'package:hse_dormitory/config/constants.dart';

class ScheduleItem extends StatelessWidget {
  ScheduleItem(
      {Key? key,
      this.title = "ПОНЕДЕЛЬНИК, 1 сентября",
      this.subtitle = "Иванов Алексей Викторович",
      this.start = "10:00",
      this.end = "12:00"})
      : super(key: key);

  final String title;
  final String subtitle;
  final String start;
  final String end;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(vertical: 15),
      color: Colors.white,
      height: 115,
      child: Row(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(start),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(end),
            )
          ],
        ),
        Container(
          width: 3,
          color: Constants.accentColor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 20),
              Text(
                subtitle,
                style:
                    TextStyle(color: Constants.secondTextColor, fontSize: 13),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
