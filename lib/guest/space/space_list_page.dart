import 'package:flutter/material.dart';
import 'package:out_space/util/header_textview.dart';
import 'package:get/get.dart';

class SpaceListPage extends StatelessWidget {
  const SpaceListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: widgetBody(),
    ));
  }

  Widget widgetBody() {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      HeaderTextView(text: "내 주변 공간 목록"),
      ElevatedButton(
          onPressed: () => Get.toNamed('/space/list'), child: Text("공간정보"))
    ]);
  }
}
