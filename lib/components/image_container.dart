import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
    required this.imageUrl,
    required this.width,
    this.height = 125,
    this.child = const SizedBox.shrink(),
  }) : super(key: key);

  final String imageUrl;
  final double width;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(imageUrl))),
      child: child,
    );
  }
}
