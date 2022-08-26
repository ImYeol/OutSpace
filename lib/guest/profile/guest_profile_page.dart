import 'package:flutter/material.dart';
import 'package:out_space/const/app_constants.dart';
import 'package:get/get.dart';
import 'package:out_space/const/app_mode.dart';
import 'package:out_space/guest/profile/guest_edit_profile_page.dart';
import 'package:out_space/home/home_page.dart';
import 'package:out_space/repository/app_repository.dart';

class GuestProfilePage extends StatelessWidget {
  const GuestProfilePage({Key? key}) : super(key: key);

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
            thickness: 1,
            height: 50,
          ),
          _buildAccountManagementMenu(),
          Divider(
            thickness: 1,
            height: 50,
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

  Widget _buildAccountManagementMenu() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("계정 관리", style: Get.textTheme.titleLarge),
        SizedBox(
          height: 20,
        ),
        _buildMenuItem(Icons.person_outline, "개인정보", GuestEditProfilePage()),
        _buildMenuItem(
            Icons.notifications_none_outlined, "알림", GuestEditProfilePage()),
        _buildMenuItem(
            Icons.lock_outline, "개인정보 보호 및 공유", GuestEditProfilePage())
      ],
    );
  }

  Widget _buildMenuItem(IconData iconData, String title, Widget router) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        iconData,
        size: 25,
      ),
      title: Text(
        title,
        style: Get.textTheme.labelMedium,
      ),
      onTap: () => Get.to(router),
      trailing: Icon(
        Icons.keyboard_arrow_right_outlined,
        size: 25,
      ),
    );
  }

  Widget _buildHostModeSwitchMenu() {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        child: Align(
          alignment: Alignment.center,
          child: Text("호스트 모드 전환"),
        ),
        onPressed: () {
          final repository = AppRepository();
          repository.setAppMode(AppMode.host);
          Get.off(const HomePage(), preventDuplicates: false);
        },
      ),
    );
  }
}
