import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.cancel_rounded, size: 50),
          ),
        ),
        body: body(),
      ),
    );
  }

  Widget body() {
    return Column(
      children: [
        const Text("약속 시간"),
        const Divider(),
        const Text("2022.7.4 오전 1:30"),
        const Divider(),
        const Text("약속 전 나에게 알림"),
        const Divider(),
        const Text("30분 전"),
        ElevatedButton(onPressed: () => Get.back(), child: const Text("완료"))
      ],
    );
  }
}
