import 'package:flutter/material.dart';
import 'package:hse_dormitory/components/schedule_item.dart';
import 'package:hse_dormitory/config/constants.dart';

class GymSchedule extends StatelessWidget {
  const GymSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Constants.backgroundColor,
        appBar: AppBar(
          title: const Text("Расписание залов"),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Text("1 корпус"),
              ),
              Tab(
                icon: Text("2 корпус"),
              ),
              Tab(
                icon: Text("3 корпус"),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Column(children: [
              ScheduleItem(
                title: "ПОНЕДЕЛЬНИК, 5 сентября",
              ),
              ScheduleItem(
                title: "ВТОРНИК, 6 сентября",
              ),
              ScheduleItem(
                title: "СРЕДА, 7 ентября",
              ),
              ScheduleItem(
                title: "ЧЕТВЕРГ, 8 сентября",
              ),
              ScheduleItem(
                title: "ПЯТНИЦА, 9 сентября",
              ),
              ScheduleItem(
                title: "СУББОТА, 10 сентября",
              ),
              ScheduleItem(
                title: "ВОСКРЕСЕНЬЕ, 11 сентября",
              ),
            ]),
          ),
          SingleChildScrollView(
            child: Column(children: [
              ScheduleItem(
                title: "ПОНЕДЕЛЬНИК, 5 сентября",
              ),
              ScheduleItem(
                title: "ВТОРНИК, 6 сентября",
              ),
              ScheduleItem(
                title: "СРЕДА, 7 ентября",
              ),
              ScheduleItem(
                title: "ЧЕТВЕРГ, 8 сентября",
              ),
              ScheduleItem(
                title: "ПЯТНИЦА, 9 сентября",
              ),
              ScheduleItem(
                title: "СУББОТА, 10 сентября",
              ),
              ScheduleItem(
                title: "ВОСКРЕСЕНЬЕ, 11 сентября",
              ),
            ]),
          ),
          Column(children: []),
        ]),
      ),
    );
  }
}
