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
      body: SingleChildScrollView(
        child: Column(children: [
          ScheduleItem(
            title: "ПОНЕДЕЛЬНИК, 5 сентября",
            subtitle: "Футбол",
          ),
          ScheduleItem(
            title: "ВТОРНИК, 6 сентября",
            subtitle: "Футбол",
          ),
          ScheduleItem(
            title: "СРЕДА, 7 ентября",
            subtitle: "Волейбол",
          ),
          ScheduleItem(
            title: "ЧЕТВЕРГ, 8 сентября",
            subtitle: "Баскетбол",
          ),
          ScheduleItem(
            title: "ПЯТНИЦА, 9 сентября",
            subtitle: "Футбол",
          ),
          ScheduleItem(
            title: "СУББОТА, 10 сентября",
            subtitle: "Волейбол",
          ),
          ScheduleItem(
            title: "ВОСКРЕСЕНЬЕ, 11 сентября",
            subtitle: "Баскетбол",
          ),
        ]),
      ),
    );
  }
}
