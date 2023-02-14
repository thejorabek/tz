import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:task/data/models/time_model.dart';

@immutable
abstract class TimeState extends Equatable {}

class TimeLoadingState extends TimeState {
  @override
  List<Object?> get props => [];
}

class TimeLoadedState extends TimeState {
  final List<TimeModel> time;
  TimeLoadedState(this.time);
  @override
  List<Object?> get props => [time];
}
class TimeErrorState extends TimeState {
  final String error;
  TimeErrorState(this.error);
  @override
  List<Object?> get props => [error];
}