import 'package:flutter/material.dart';
import 'package:out_space/util/header_textview.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      HeaderTextView(text: "요청서"),
    ]);
  }
}
