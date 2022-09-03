import 'package:flutter/material.dart';
import 'package:hse_dormitory/components/schedule_item.dart';
import 'package:hse_dormitory/config/constants.dart';

class SportSchedule extends StatelessWidget {
  const SportSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: AppBar(
        title: const Text("Расписание спортплощадок"),
      ),
      body: Column(children: [
        ScheduleItem(
          subtitle: "Футбол",
        ),
        ScheduleItem(subtitle: "Футбол"),
        ScheduleItem(subtitle: "Футбол"),
      ]),
    );
  }
}
