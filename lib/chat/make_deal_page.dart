import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:out_space/chat/appointment_page.dart';
import 'package:out_space/chat/chat_screen.dart';
import 'package:out_space/util/header_textview.dart';

class MakeDealPage extends StatelessWidget {
  late double width;
  late double height;
  MakeDealPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(appBar: appBar(), body: widgetBody(context)));
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: const Text("한빛이"),
      leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_left_rounded),
          iconSize: 50),
      actions: [
        IconButton(
          onPressed: () => Get.to(() => const AppointmentPage()),
          icon: const Icon(Icons.calendar_month),
          iconSize: 30,
        )
      ],
    );
  }

  Widget widgetBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ChatScreen(width: width, height: height),
        Expanded(child: inputWidget()),
      ],
    );
  }

  Widget inputWidget() {
    return Container(
      width: width,
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white30,
      ),
      child: Row(
        children: [
          SizedBox(
              width: width - 50,
              height: 50,
              child: const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "입력하세요"),
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_rounded, size: 25))
        ],
      ),
    );
  }
}
