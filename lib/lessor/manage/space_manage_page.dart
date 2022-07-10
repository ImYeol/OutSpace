import 'package:flutter/material.dart';
import 'package:out_space/util/header_textview.dart';

class SpaceManagePage extends StatelessWidget {
  const SpaceManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [HeaderTextView(text: "내 공간")]),
    );
  }
}
