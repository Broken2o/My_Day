import 'package:my_day/cubits/counter_cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(CounterInitial());
  static CounterCubit get(context)=> BlocProvider.of(context);

  int counter=0;

  void plus(){
    counter++;
    emit(CounterPlusState());
  }
}