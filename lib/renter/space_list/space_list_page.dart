import 'package:flutter/material.dart';
import 'package:out_space/util/header_textview.dart';

class SpaceListPage extends StatelessWidget {
  const SpaceListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: const [HeaderTextView(text: "내 주변 공간 목록")],
      ),
    );
  }
}
