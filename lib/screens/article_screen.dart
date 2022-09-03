import 'package:flutter/material.dart';
import 'package:hse_dormitory/components/custom_tag.dart';
import 'package:hse_dormitory/components/image_container.dart';
import 'package:hse_dormitory/config/constants.dart';

import '../models/article.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  static const routeName = '/article';

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)?.settings.arguments as Article;
    return ImageContainer(
        imageUrl: argument.imageUrl,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                    ),
                    CustomTag(
                        backgroundColor: Colors.grey.withAlpha(150),
                        children: [
                          Text(
                            argument.category,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Colors.white),
                          )
                        ]),
                    const SizedBox(height: 10),
                    Text(
                      argument.title,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              fontWeight: FontWeight.bold,
                              height: 1.25,
                              color: Colors.white),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      argument.subtitle,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white70),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                decoration: BoxDecoration(
                    color: Constants.backgroundColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTag(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          children: [
                            SizedBox(
                              width: 30,
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(argument.authorImageUrl),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              argument.author,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                            )
                          ],
                          backgroundColor: Constants.accentColor),
                      CustomTag(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 7),
                          children: [
                            Icon(
                              Icons.schedule,
                              color: Constants.secondTextColor,
                              size: 25,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "8 часов",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Constants.secondTextColor,
                                      fontWeight: FontWeight.w400),
                            )
                          ],
                          backgroundColor: Colors.grey.shade300),
                      CustomTag(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 7),
                          children: [
                            Icon(
                              Icons.visibility,
                              color: Constants.secondTextColor,
                              size: 25,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "100 просм",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Constants.secondTextColor,
                                      fontWeight: FontWeight.w400),
                            )
                          ],
                          backgroundColor: Colors.grey.shade300),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Text(
                  //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                  //   style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 20,
                  //       color: Colors.black),
                  // ),
                  const SizedBox(height: 10),
                  Text(
                    argument.body,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 14, color: Colors.black),
                  ),
                  const SizedBox(height: 30),
                ]),
              )
            ]),
          ),
        ));
  }
}
