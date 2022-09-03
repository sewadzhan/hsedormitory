import 'package:flutter/material.dart';
import 'package:hse_dormitory/components/custom_drawer.dart';
import 'package:hse_dormitory/components/custom_tag.dart';

import '../components/image_container.dart';
import '../config/constants.dart';
import '../models/article.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.backgroundColor,
        extendBodyBehindAppBar: true,
        drawer: CustomDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Column(children: [
            ImageContainer(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.45,
              imageUrl: Article.articles[0].imageUrl,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTag(
                          backgroundColor: Colors.grey.withAlpha(150),
                          children: [
                            Text(
                              Article.articles[0].category,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )
                          ]),
                      const SizedBox(height: 20),
                      Text(
                        Article.articles[0].title,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                fontWeight: FontWeight.bold,
                                height: 1.25,
                                color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Learn more",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: Colors.white),
                              ),
                              const SizedBox(width: 10),
                              const Icon(
                                Icons.arrow_right_alt,
                                color: Colors.white,
                              )
                            ],
                          ))
                    ]),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Последние публикации",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 21),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Больше",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 500,
                    padding: const EdgeInsets.only(left: 20),
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: Article.articles.length,
                        itemBuilder: (context, index) => Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              margin: const EdgeInsets.only(right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ImageContainer(
                                      imageUrl:
                                          Article.articles[index].imageUrl,
                                      width: MediaQuery.of(context).size.width *
                                          0.45),
                                  const SizedBox(height: 10),
                                  Text(
                                    Article.articles[index].title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                    maxLines: 2,
                                  ),
                                  const SizedBox(height: 7),
                                  Text(
                                      "${DateTime.now().difference(Article.articles[index].createdAt).inHours} hours ago",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            color: Constants.secondTextColor,
                                          )),
                                  const SizedBox(height: 5),
                                  Text("${Article.articles[index].author}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            color: Constants.secondTextColor,
                                          ))
                                ],
                              ),
                            )),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
