import 'package:flutter/material.dart';
import 'package:hse_dormitory/screens/article_screen.dart';
import 'package:hse_dormitory/screens/discover_screen.dart';
import 'package:hse_dormitory/gym_schedule.dart';
import 'package:hse_dormitory/screens/home_screen.dart';
import 'package:hse_dormitory/screens/main_screen.dart';
import 'package:hse_dormitory/sport_schedule.dart';
import 'package:url_launcher/url_launcher.dart';

import 'config/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        secondaryHeaderColor: Constants.accentColor,
        primaryColor: Constants.accentColor,
      ),
      initialRoute: '/',
      routes: {
        MainScreen.routeName: (context) => MainScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        ArticleScreen.routeName: (context) => const ArticleScreen(),
        DiscoverScreen.routeName: (context) => DiscoverScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Студенческий городок Дубки"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            ListTile(
              onTap: () => launchUrl(Uri.parse(
                  "https://vk.com/doc90300241_639740720?hash=kLcWYvT0ZoPeP9lWI9FaIYrjDRY2Xlk44O5nNiy10yH&dl=AJ7MPRLwVJZ7Uw2alkU3ozVk5DRAA3vC959fQsJg5IL")),
              leading: Icon(Icons.bus_alert),
              title: Text("Расписание автобусов"),
            ),
            ListTile(
              leading: Icon(Icons.sports_gymnastics),
              title: Text("Расписание тренажерных залов"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GymSchedule()));
              },
            ),
            ListTile(
              onTap: () =>
                  launchUrl(Uri.parse("https://pay.hse.ru/moscow/prg")),
              leading: Icon(Icons.money),
              title: Text("Оплата за проживание"),
            ),
            ListTile(
              leading: Icon(Icons.sports_basketball),
              title: Text("Расписание спортплощадок"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SportSchedule()));
              },
            ),
            ListTile(
              onTap: () => launchUrl(Uri.parse(
                  "https://vk.com/doc90300241_639740720?hash=kLcWYvT0ZoPeP9lWI9FaIYrjDRY2Xlk44O5nNiy10yH&dl=AJ7MPRLwVJZ7Uw2alkU3ozVk5DRAA3vC959fQsJg5IL")),
              leading: Icon(Icons.book),
              title:
                  Text("Правила внутреннего распорядка студенческих общежитий"),
            ),
            ListTile(
              leading: Icon(Icons.chat_bubble),
              title: Text("Обратиться в студенческий совет"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GymSchedule()));
              },
            ),
            ListTile(
              leading: Icon(Icons.voice_chat),
              title: Text("Запись к психологу"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GymSchedule()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
