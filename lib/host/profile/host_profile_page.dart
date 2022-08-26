import 'package:flutter/material.dart';
import 'package:out_space/const/app_constants.dart';
import 'package:get/get.dart';
import 'package:out_space/const/app_mode.dart';
import 'package:out_space/home/home_page.dart';
import 'package:out_space/repository/app_repository.dart';

class HostProfilePage extends StatelessWidget {
  const HostProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppConstants.defaultVerticalPaddingSize,
          horizontal: AppConstants.defaultHorizontalPaddingSize),
      child: ListView(
        children: [
          _buildProfileHeader(),
          Divider(
            height: 100,
          ),
          _buildHostModeSwitchMenu()
        ],
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.person_rounded,
          size: 50,
        ),
        Text("홍길동님", style: Get.textTheme.titleMedium),
      ],
    );
  }

  Widget _buildHostModeSwitchMenu() {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        child: Align(
          alignment: Alignment.center,
          child: Text("게스트 모드 전환"),
        ),
        onPressed: () {
          final repository = AppRepository();
          repository.initStorage();
          repository.setAppMode(AppMode.guest);
          Get.off(const HomePage(), preventDuplicates: false);
        },
      ),
    );
  }
}
