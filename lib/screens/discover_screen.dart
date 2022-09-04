import 'package:flutter/material.dart';
import 'package:hse_dormitory/components/custom_drawer.dart';
import 'package:hse_dormitory/components/image_container.dart';
import 'package:hse_dormitory/config/constants.dart';
import 'package:hse_dormitory/models/article.dart';
import 'package:hse_dormitory/screens/article_screen.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  static const routeName = '/discover';
  static const tabs = ["Администрация", "Студсовет", "Студенты"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        backgroundColor: Constants.backgroundColor,
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                "Лента Новостей",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Cтуденческий городок Дубки",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Constants.secondTextColor),
            ),
            const SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Поиск",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon:
                      RotatedBox(quarterTurns: 1, child: Icon(Icons.tune)),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none)),
            ),
            const SizedBox(height: 15),
            TabBar(
                isScrollable: true,
                indicatorColor: Constants.accentColor,
                tabs: tabs
                    .map((e) => Tab(
                          icon: Text(
                            e,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                          ),
                        ))
                    .toList()),
            const SizedBox(height: 15),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                  children: tabs.map((e) {
                var articles = Article.articles;
                if (e == "Администрация") {
                  articles = articles
                      .where((element) => element.category == "Администрация")
                      .toList();
                }
                if (e == "Студсовет") {
                  articles = articles
                      .where((element) => element.category == "Студсовет")
                      .toList();
                }
                if (e == "Студенты") {
                  articles = articles
                      .where((element) => element.category == "Студент")
                      .toList();
                }
                return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: articles.length,
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, ArticleScreen.routeName,
                                arguments: articles[index]);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ImageContainer(
                                      imageUrl: articles[index].imageUrl,
                                      width: MediaQuery.of(context).size.width *
                                          0.25,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.25),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 15),
                                          child: Text(
                                            articles[index].title,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall!
                                                .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                            maxLines: 2,
                                            overflow: TextOverflow.clip,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.schedule,
                                                  color:
                                                      Constants.secondTextColor,
                                                  size: 18,
                                                ),
                                                const SizedBox(width: 3),
                                                Text(
                                                  "${DateTime.now().difference(articles[index].createdAt).inHours} hours ago",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(
                                                          color: Constants
                                                              .secondTextColor,
                                                          fontSize: 12),
                                                )
                                              ],
                                            ),
                                            const SizedBox(width: 20),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.visibility,
                                                  color:
                                                      Constants.secondTextColor,
                                                  size: 18,
                                                ),
                                                const SizedBox(width: 3),
                                                Text(
                                                  "100 views",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(
                                                          color: Constants
                                                              .secondTextColor,
                                                          fontSize: 12),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                        ));
              }).toList()),
            )
          ]),
        ),
        drawer: CustomDrawer(),
      ),
    );
  }
}
