import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          headerTextView(),
          renterButton(),
          lessorButton(),
          loginButton()
        ],
      ),
    );
  }

  Widget headerTextView() {
    return const Align(
      alignment: Alignment.center,
      child: Text("창고창고"),
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
