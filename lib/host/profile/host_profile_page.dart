import 'package:flutter/material.dart';

class HostProfilePage extends StatelessWidget {
  const HostProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _itemListView(),
    );
  }

  Widget _itemListView() {
    return ListView(
      padding: EdgeInsets.only(bottom: 0, left: 20, right: 20, top: 0),
      children: [],
    );
  }
}
