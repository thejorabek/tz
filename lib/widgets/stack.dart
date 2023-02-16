import 'package:flutter/material.dart';
import 'package:task/core/constants/constant.dart';
import 'package:task/core/theme/theme.dart';

class MStack extends StatelessWidget {
  const MStack({
    super.key,
    required this.width,
    required this.height,
    this.time,
    this.hour,
    this.minute,
    required this.weather,
    this.day,
    this.weekday,
  });

  final double width;
  final double height;
  final List? time;
  final String? hour;
  final int? minute;
  final int weather;
  final int? day;
  final int? weekday;

  @override
  Widget build(BuildContext context) {
    MyTheme myTheme = MyTheme();
    return StreamBuilder<Object>(
        stream: myTheme.colorStream,
        initialData: Colors.white,
        builder: (context, snapshot) {
          return Stack(children: [
            Image.asset(
              snapshot.data == Color.black
                  ? 'assets/background_light.png'
                  : 'assets/background.png',
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: width * .12, vertical: height * .12),
              width: double.infinity,
              height: height * .6,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: width * .007,
                      color: snapshot.data == Color.black
                          ? Colors.white
                          : Colors.blue),
                  borderRadius: BorderRadius.circular(15)),
            ),
            Padding(
                padding: EdgeInsets.only(left: width * .36, top: height * .115),
                child: Container(
                    width: width * .29,
                    height: height * .01,
                    color: snapshot.data == Color.black
                        ? Colors.blue.shade900
                        : Colors.white)),
            Padding(
                padding: EdgeInsets.only(left: width * .37),
                child: Image.asset(
                  'assets/gerb.png',
                  width: width * .27,
                  height: height * .27,
                )),
            Padding(
              padding: EdgeInsets.only(top: height * .25, left: width * .2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${hour.toString()}',
                    style: TextStyle(
                        color: snapshot.data == Color.black
                            ? Colors.white
                            : Colors.blue,
                        fontSize: 90,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: height * .05),
                  Text(
                    '${day.toString()}' + ' ' + 'Fevral',
                    style: TextStyle(
                        fontSize: 50,
                        color: snapshot.data == Color.black
                            ? Colors.white
                            : Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: height * .05),
                  Text(
                    Constants.returnDay(weekday!),
                    style: TextStyle(
                        fontSize: 50,
                        color: snapshot.data == Color.black
                            ? Colors.white
                            : Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: height * .8, left: width * .05, right: width * .05),
              child: Row(
                children: [
                  Image.asset(
                    'assets/rain.png',
                    width: width * .37,
                    height: height * .37,
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text('+$weather' + '°',
                          style: TextStyle(
                              color: snapshot.data == Color.black
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 60)),
                      Text(
                        'Toshkent',
                        style: TextStyle(
                            color: snapshot.data == Color.black
                                ? Colors.white
                                : Colors.black,
                            fontSize: 40),
                      )
                    ],
                  )
                ],
              ),
            )
          ]);
        });
  }
}
