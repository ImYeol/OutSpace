import 'package:flutter/material.dart';
import 'package:out_space/const/app_constants.dart';
import 'package:get/get.dart';
import 'package:out_space/guest/message/guest_inbox_message_view.dart';
import 'package:out_space/guest/message/guest_inbox_notification_view.dart';

class GuestInboxPage extends StatefulWidget {
  const GuestInboxPage({Key? key}) : super(key: key);

  @override
  State<GuestInboxPage> createState() => _GuestInboxPageState();
}

class _GuestInboxPageState extends State<GuestInboxPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.defaultHorizontalPaddingSize,
          vertical: AppConstants.defaultVerticalPaddingSize),
      child: Column(
        children: [
          _buildPageTitleView("메시지함"),
          _buildTabBar(),
          _buildTabBarView()
        ],
      ),
    );
  }

  Widget _buildPageTitleView(String title) {
    return Text(
      title,
      style: Get.textTheme.titleLarge,
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      tabs: [
        _buildTabBarMenu("메시지"),
        _buildTabBarMenu("알림"),
      ],
      controller: _tabController,
    );
  }

  Widget _buildTabBarMenu(String title) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      child: Text(
        title,
        style: Get.textTheme.labelLarge,
      ),
    );
  }

  Widget _buildTabBarView() {
    return Expanded(
        child: TabBarView(
      controller: _tabController,
      children: [
        GuestInboxMessageView(),
        GuestInboxNotificationView(),
      ],
    ));
  }
}
