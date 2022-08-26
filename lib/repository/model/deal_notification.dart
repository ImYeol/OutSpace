import 'package:out_space/repository/model/user_data.dart';

class DealNotification {
  final UserData from;
  final String message;
  final DateTime date;

  DealNotification(
      {required this.from, required this.message, required this.date});
}
