import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hse_dormitory/config/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../gym_schedule.dart';
import '../sport_schedule.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          ListTile(
            onTap: () => launchUrl(Uri.parse(
                "https://vk.com/doc90300241_639740720?hash=kLcWYvT0ZoPeP9lWI9FaIYrjDRY2Xlk44O5nNiy10yH&dl=AJ7MPRLwVJZ7Uw2alkU3ozVk5DRAA3vC959fQsJg5IL")),
            leading: FaIcon(
              FontAwesomeIcons.bus,
              color: Constants.accentColor,
            ),
            title: Text("Расписание автобусов"),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.dumbbell,
              color: Constants.accentColor,
            ),
            title: Text("Расписание тренажерных залов"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const GymSchedule()));
            },
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.volleyball,
              color: Constants.accentColor,
            ),
            title: Text("Расписание спортплощадок"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SportSchedule()));
            },
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.mattressPillow,
              color: Constants.accentColor,
            ),
            title: Text("Расписание кастеляной"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SportSchedule()));
            },
          ),
          Divider(),
          ListTile(
            onTap: () => launchUrl(Uri.parse("https://pay.hse.ru/moscow/prg")),
            leading: FaIcon(
              FontAwesomeIcons.moneyCheckDollar,
              color: Constants.accentColor,
            ),
            title: Text("Оплата за проживание"),
          ),
          ListTile(
            onTap: () => launchUrl(Uri.parse(
                "https://docs.google.com/document/d/1JDhZLPjKhjgUViRJ5VmWsVALyTLnNrpB/edit?usp=sharing&ouid=117079879175761001051&rtpof=true&sd=true")),
            leading: FaIcon(
              FontAwesomeIcons.circleInfo,
              color: Constants.accentColor,
            ),
            title:
                Text("Правила внутреннего распорядка студенческих общежитий"),
          ),
          Divider(),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.message,
              color: Constants.accentColor,
            ),
            title: Text("Обратиться в студенческий совет"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StudSovetScreen()));
            },
          ),
          // ListTile(
          //   leading: FaIcon(
          //     FontAwesomeIcons.brain,
          //     color: Constants.accentColor,
          //   ),
          //   title: Text("Запись к психологу"),
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => const GymSchedule()));
          //   },
          // ),
        ],
      ),
    ));
  }
}
