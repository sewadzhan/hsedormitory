import 'package:flutter/material.dart';

class CustomTag extends StatelessWidget {
  const CustomTag(
      {Key? key,
      required this.children,
      required this.backgroundColor,
      this.padding = const EdgeInsets.all(10)})
      : super(key: key);

  final List<Widget> children;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: Row(mainAxisSize: MainAxisSize.min, children: children),
    );
  }
}
