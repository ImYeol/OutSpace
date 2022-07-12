import 'package:flutter/material.dart';
import 'package:out_space/util/header_textview.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: widgetBody(),
    ));
  }

  Widget widgetBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [HeaderTextView(text: "Welcome to 창고창고"), googleLoginButton()],
    );
  }

  Widget googleLoginButton() {
    return ElevatedButton(
      child: const Text("google login"),
      onPressed: () => {},
    );
  }
}
