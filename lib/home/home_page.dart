import 'package:flutter/material.dart';
import 'package:out_space/const/app_constants.dart';
import 'package:out_space/const/app_mode.dart';
import 'package:out_space/guest/message/guest_inbox_page.dart';
import 'package:out_space/host/manage/space_manage_page.dart';
import 'package:out_space/host/message/host_inbox_page.dart';
import 'package:out_space/host/profile/host_profile_page.dart';
import 'package:out_space/host/schedule/calendar_page.dart';
import 'package:out_space/guest/profile/guest_profile_page.dart';
import 'package:out_space/guest/space/space_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  AppMode _appMode = AppMode.guest;

  final List<String> _pageTitlesForGuest = [
    '검색',
    '메세지',
    '프로필',
  ];

  final List<String> _pageTitlesForHost = [
    '투데이',
    '메시지',
    '달력',
    '프로필',
  ];

  final List<IconData> _pageIconDataForGuest = [
    Icons.search_outlined,
    Icons.message_outlined,
    Icons.person_outline
  ];

  final List<IconData> _pageIconDataForHost = [
    Icons.check_box_outlined,
    Icons.message_outlined,
    Icons.calendar_month_outlined,
    Icons.person_outline
  ];

  final List<Widget> _pagesForGuest = const [
    SpaceListPage(),
    GuestInboxPage(),
    GuestProfilePage(),
  ];

  final List<Widget> _pagesForHost = const [
    SpaceManagePage(),
    HostInboxPage(),
    CalendarPage(),
    HostProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _appMode == AppMode.host
            ? _pagesForHost[_selectedIndex]
            : _pagesForGuest[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: _appMode == AppMode.host
              ? List.generate(
                  _pageTitlesForHost.length,
                  (index) => _buildNavigationItem(index,
                      _pageIconDataForHost[index], _pageTitlesForHost[index]))
              : List.generate(
                  _pageTitlesForGuest.length,
                  (index) => _buildNavigationItem(
                      index,
                      _pageIconDataForGuest[index],
                      _pageTitlesForGuest[index])),
          selectedItemColor: AppConstants.selectedItemColor,
          unselectedItemColor: AppConstants.nonSelectedItemColor,
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavigationItem(
      int index, IconData iconData, String text) {
    return BottomNavigationBarItem(
      icon: Icon(
        iconData,
        color: AppConstants.nonSelectedItemColor,
      ),
      activeIcon: Icon(
        iconData,
        color: AppConstants.selectedItemColor,
      ),
      label: text,
    );
  }
}
