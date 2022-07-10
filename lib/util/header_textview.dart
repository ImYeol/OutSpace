import 'package:flutter/material.dart';

class HeaderTextView extends StatelessWidget {
  final String text;
  const HeaderTextView({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Align(
        alignment: Alignment.center,
        child: Text(text),
      ),
    );
  }
}

class SubHeaderTextView extends StatelessWidget {
  final String text;
  const SubHeaderTextView({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(text),
      ),
    );
  }
}
