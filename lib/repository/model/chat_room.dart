import 'package:out_space/repository/model/user_data.dart';

class ChatRoom {
  final UserData from;
  final String message;
  final DateTime date;

  ChatRoom({required this.from, required this.message, required this.date});
}
