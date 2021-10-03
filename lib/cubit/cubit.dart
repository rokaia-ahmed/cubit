import 'package:bloc/bloc.dart';
import 'package:cubit/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit(CounterStates initialState) : super(InitialState());

  static CounterCubit get(context)  => BlocProvider.of(context);

  int counter = 0 ;

  void add (){
    counter ++;
    emit(SuccessState());
  }
  void minus (){
    counter --;
    emit(SuccessState());
  }

}
