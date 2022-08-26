import 'package:flutter/material.dart';
import 'package:out_space/const/app_theme.dart';
import 'package:out_space/home/home_page.dart';
import 'package:out_space/host/manage/space_detail_page.dart';
import 'package:out_space/host/manage/space_manage_page.dart';
import 'package:out_space/login/login_page.dart';
import 'package:out_space/guest/request/request_page.dart';
import 'package:out_space/guest/space/space_list_page.dart';
import 'package:out_space/repository/app_repository.dart';
import 'home/home_page.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await AppRepository().initStorage();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.lightTheme,
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
