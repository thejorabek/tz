import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/bloc/time_bloc/time_event.dart';
import 'package:task/bloc/time_bloc/time_state.dart';
import 'package:task/data/models/time_model.dart';
import 'package:task/data/services/time_repository.dart';

class TimeBloc extends Bloc<TimeEvent, TimeState> {
  final TimeRepository timeRepository;

  TimeBloc(this.timeRepository) : super(TimeLoadingState()) {
    on<LoadTimeEvent>((event, emit) async {
      print('oldin');
      emit(TimeLoadingState());
      print('keyin');
      try {
        final times = await timeRepository.getTime();
        emit(TimeLoadedState(times as List<TimeModel>));
        print('ha');
      } catch (e) {
        emit(TimeErrorState(e.toString()));
        print('yoq');
      }
    });
  }
}
