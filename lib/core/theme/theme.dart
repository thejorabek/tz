enum Color { black, white }

class MyTheme {
  Color color = Color.white;

  Stream<Color> get colorStream async* {
    while (true) {
      var currentTime = DateTime.now();
      if (currentTime.hour >= 19 || currentTime.hour < 7) {
        color = Color.black;
      } else {
        color = Color.white;
      }
      yield color;
      await Future.delayed(Duration(seconds: 1));
    }
  }
}
