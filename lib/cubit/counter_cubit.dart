import 'dart:math';

import 'package:basketball_points_counter/cubit/counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncreamentState());
  int teamAPoint = 0;
  int teamBPoint = 0;
  void teamIncreament({required String team, required int buttonnumber}) {
    if (team == 'A') {
      teamAPoint += buttonnumber;
      emit(CounterAIncreamentState());
    } else if (team == 'B') {
      teamBPoint += buttonnumber;
     print(log(teamBPoint)) ;
      emit(CounterBIncreamentState());
    
      
    }
    else{
        teamAPoint = 0;
   teamBPoint = 0;
    }
  }
}
