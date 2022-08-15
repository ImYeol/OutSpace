import 'package:flutter/material.dart';
import 'package:out_space/home/home_page.dart';
import 'package:out_space/host/manage/space_detail_page.dart';
import 'package:out_space/host/manage/space_manage_page.dart';
import 'package:out_space/login/login_page.dart';
import 'package:out_space/guest/request/request_page.dart';
import 'package:out_space/guest/space/space_list_page.dart';

import 'home/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.white,
          primaryColor: Colors.white),
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/request', page: () => const RequestPage()),
        GetPage(name: '/space/list', page: () => const SpaceListPage()),
        GetPage(name: '/space/manage', page: () => const SpaceManagePage()),
      ],
      home: const HomePage(),
    );
  }
}
