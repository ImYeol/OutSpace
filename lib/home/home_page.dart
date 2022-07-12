import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:out_space/util/header_textview.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: widgetBody(),
    ));
  }

  Widget widgetBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HeaderTextView(text: "창고창고"),
        renterButton(),
        lessorButton(),
        loginButton()
      ],
    );
  }

  Widget renterButton() {
    return ElevatedButton(
      child: const Text("짐 맡기기"),
      onPressed: () => Get.toNamed('/space/list'),
    );
  }

  Widget lessorButton() {
    return ElevatedButton(
      child: const Text("짐 맡아주기"),
      onPressed: () => Get.toNamed('/space/manage'),
    );
  }

  Widget loginButton() {
    return ElevatedButton(
      child: const Text("로그인"),
      onPressed: () => Get.toNamed('/login'),
    );
  }
}
