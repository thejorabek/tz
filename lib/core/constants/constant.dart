import 'package:intl/intl.dart';

class Constants {
  static String url = 'http://worldtimeapi.org/api/timezone/Asia/Tashkent';

  static List info = [
    DateTime.now().hour,
    DateTime.now().minute,
  ];

  static returnDay(int day) {
    switch (day) {
      case 1:
        return 'Dushanba';
      case 2:
        return 'Seshanba';
      case 3:
        return 'Chorshanba';
      case 4:
        return 'Payshanba';
      case 5:
        return 'Juma';
      case 6:
        return 'Shanba';
      case 7:
        return 'Yakshanba';
      default:
        return 'Dushanba';
    }
  }

  static Stream<String> getTimeStream() {
    return Stream.periodic(const Duration(seconds: 1), (count) {
      var now = DateTime.now();
      var formattedTime = DateFormat('kk:mm').format(now);
      return formattedTime;
    });
  }

  static Stream<String> getWeekdayStream() {
    return Stream.periodic(const Duration(seconds: 1), (count) {
      var weekday = DateTime.now().weekday.toString();
      return weekday;
    });
  }

  static Stream<String> getDayStream() {
    return Stream.periodic(const Duration(seconds: 1), (count) {
      var day = DateTime.now().day.toString();
      return day;
    });
  }
}
