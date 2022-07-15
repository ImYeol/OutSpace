import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatMessage extends StatelessWidget {
  final String? image;
  final String message;
  const ChatMessage({Key? key, this.image, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("image : $image");
    return Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Row(
          children: [
            if (image != null) profileImage(image!),
            Container(
              width: 10,
            ),
            messageView(message)
          ],
        ));
  }

  Widget profileImage(String url) {
    return const CircleAvatar(
      radius: 25,
      backgroundImage: AssetImage("images/profile_icon_sample.png"),
    );
  }

  Widget messageView(String message) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.orange,
      ),
      child: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
