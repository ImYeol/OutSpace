import 'package:flutter/material.dart';
import 'package:out_space/chat/chat_message.dart';
import 'message.dart';

class ChatScreen extends StatelessWidget {
  final double width;
  final double height;
  const ChatScreen({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
      height: height,
      width: width,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: messages.length,
          itemBuilder: (context, index) => _generateItems(index)),
    ));
  }

  Widget _generateItems(int index) {
    if (messages[index].getId() == "yeol") {
      return Align(
        alignment: Alignment.centerRight,
        child: ChatMessage(
          message: messages[index].getMessage(),
          image: messages[index].getId(),
        ),
      );
    } else {
      return ChatMessage(
        message: messages[index].getMessage(),
        image: null,
      );
    }
  }
}
