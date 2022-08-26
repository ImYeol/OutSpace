import 'package:intl/intl.dart';

class DateFormatHelper {
  static String getDateFormatAsString(DateTime targetDate) {
    DateTime currentDate = DateTime.now();
    print(currentDate);
    if (targetDate.year < currentDate.year) {
      return DateFormat.yMMMd('en_US').format(targetDate);
    } else if (targetDate.year == currentDate.year) {
      if (targetDate.month < currentDate.month) {
        return DateFormat.MMMd('en_US').format(targetDate);
      } else if (targetDate.month == currentDate.month) {
        if (targetDate.day < currentDate.day) {
          return DateFormat.MMMd('en_US').format(targetDate);
        } else if (targetDate.day == currentDate.day) {
          return DateFormat.Hm('en_US').format(targetDate);
        }
      }
    }
    return DateFormat.yMMMd('en_US').format(targetDate);
  }
}
