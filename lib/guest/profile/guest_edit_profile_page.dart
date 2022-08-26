import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:out_space/const/app_constants.dart';

class GuestEditProfilePage extends StatefulWidget {
  GuestEditProfilePage({Key? key}) : super(key: key);

  @override
  State<GuestEditProfilePage> createState() => _GuestEditProfilePageState();
}

class _GuestEditProfilePageState extends State<GuestEditProfilePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 15,
          onPressed: () => Get.back(),
        ),
      ),
      body: _buildEditProfileView(),
    );
  }

  Widget _buildEditProfileView() {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: AppConstants.defaultVerticalPaddingSize,
          horizontal: AppConstants.defaultHorizontalPaddingSize),
      child: Column(children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "개인정보 수정",
                  style: Get.textTheme.titleLarge,
                ),
                // menu items
                _buildFormWidget()
              ],
            ),
          ),
        )
      ]),
    );
  }

  Widget _buildFormWidget() {
    return Form(
      child: Column(
        children: [
          SingleInputTextFormField(
            hintText: "이름",
          ),
          SingleInputTextFormField(
            hintText: "나이",
          ),
          SingleInputTextFormField(
            hintText: "성별",
          ),
        ],
      ),
    );
  }
}

class SingleInputTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  const SingleInputTextFormField({Key? key, this.hintText, this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: hintText, labelText: labelText),
    );
  }
}
