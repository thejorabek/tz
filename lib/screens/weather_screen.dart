import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Image.asset(
            'assets/background.png',
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: width*.12,vertical: height*.12),
            width: double.infinity,
            height: height * .6,
            decoration: BoxDecoration(
                border: Border.all(width: width*.007,color: Colors.blue),
                borderRadius: BorderRadius.circular(15)),
          ),
          Padding(
            padding: EdgeInsets.only(left: width*.36,top: height*.115),
            child: Container(width: width*.29,height: height*.01,color: Colors.white)
          ),
          Padding(
            padding: EdgeInsets.only(left: width*.37),
            child: Image.asset('assets/gerb.png',width: width*.27,height: height*.27,)
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [Text('11:27',style: TextStyle(color: Colors.blue,fontSize: 90,fontWeight: FontWeight.bold),)],),
          )
        ]),
      ),
    );
  }
}
