import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/bloc/time_bloc/time_bloc.dart';
import 'package:task/bloc/time_bloc/time_event.dart';
import 'package:task/data/services/time_repository.dart';
import 'package:task/screens/weather_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TimeBloc>(
          create: (BuildContext context) =>
              TimeBloc(TimeRepository())..add(LoadTimeEvent()),
        ),
      ],
      child: WeatherScreen(),
    );
  }
}
