import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/bloc/time_bloc/time_bloc.dart';
import 'package:task/bloc/time_bloc/time_state.dart';
import 'package:task/core/constants/constant.dart';
import 'package:task/core/theme/theme.dart';
import 'package:task/data/models/time_model.dart';
import 'package:task/data/services/time_repository.dart';
import 'package:task/widgets/stack.dart';
import 'package:wakelock/wakelock.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  var controller = StreamController.broadcast();

  @override
  void initState() {
    super.initState();
    Wakelock.enable();
    Constants.getTimeStream();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    MyTheme myTheme = MyTheme();

    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: StreamBuilder<Color>(
          stream: myTheme.colorStream,
          builder: (context, snapshot) {
            return Scaffold(
                backgroundColor: snapshot.data == Color.black
                    ? Colors.blue.shade900
                    : Colors.white,
                body: BlocProvider(
                  create: (context) => TimeBloc(TimeRepository()),
                  child: BlocBuilder<TimeBloc, TimeState>(
                      builder: (context, state) {
                    if (state is TimeLoadingState) {
                      return StreamBuilder(
                          stream: Constants.getTimeStream(),
                          builder: (context, snapshot) {
                            if (!snapshot.hasData) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            } else {
                              return MStack(
                                width: width,
                                height: height,
                                hour: snapshot.data.toString(),
                                weekday: DateTime.now().weekday,
                                weather: 18,
                                day: DateTime.now().day,
                              );
                            }
                          });
                    } else if (state is TimeLoadedState) {
                      List<TimeModel> time = state.time;
                      return SizedBox();
                    } else if (state is TimeErrorState) {
                      return Center(
                        child: Text('Error'),
                      );
                    } else {
                      return Text('Unknown');
                    }
                  }),
                ));
          }),
    );
  }
}
