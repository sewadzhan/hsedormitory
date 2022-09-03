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
          Column(children: [
            ScheduleItem(),
            ScheduleItem(),
            ScheduleItem(),
          ]),
          Column(children: [ScheduleItem()]),
          Column(children: []),
        ]),
      ),
    );
  }
}
