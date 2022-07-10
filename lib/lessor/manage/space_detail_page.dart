import 'package:flutter/material.dart';
import 'package:out_space/util/header_textview.dart';

class SpaceDetailPage extends StatelessWidget {
  const SpaceDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: const [HeaderTextView(text: "창고 세부사항")]),
    );
  }
}
