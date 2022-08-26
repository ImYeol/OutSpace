import 'package:flutter/material.dart';
import 'package:out_space/const/app_constants.dart';
import 'package:out_space/repository/model/deal_notification.dart';
import 'package:out_space/repository/model/user_data.dart';
import 'package:get/get.dart';
import 'package:out_space/util/date_format_helper.dart';

class GuestInboxNotificationView extends StatelessWidget {
  List<DealNotification> notifications = [
    DealNotification(
        from: const UserData(id: "asdf_sdfsdf", image: null),
        message: "거래가 완료되었습니다",
        date: DateTime.now()),
    DealNotification(
        from: const UserData(id: "홍길동22", image: null),
        message: "거래가 완료되었습니다",
        date: DateTime.now()),
    DealNotification(
        from: const UserData(id: "가나다라", image: null),
        message: "거래가 완료되었습니다",
        date: DateTime.now())
  ];

  GuestInboxNotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: AppConstants.defaultVerticalPaddingSize,
          horizontal: AppConstants.defaultHorizontalPaddingSize),
      child: ListView.separated(
          itemBuilder: (context, index) => _buildItem(notifications[index].from,
              notifications[index].message, notifications[index].date),
          itemCount: notifications.length,
          separatorBuilder: (context, index) => const Divider(thickness: 1)),
    );
  }

  Widget _buildItem(UserData from, String message, DateTime date) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        Icons.notifications_outlined,
        size: 25,
      ),
      title: Text(
        message,
        style: Get.textTheme.labelMedium,
      ),
      subtitle: Text(
        from.id,
        style: Get.textTheme.labelSmall,
      ),
      onTap: () {},
      trailing: Text(
        DateFormatHelper.getDateFormatAsString(date),
        style: Get.textTheme.labelSmall,
      ),
    );
  }
}
