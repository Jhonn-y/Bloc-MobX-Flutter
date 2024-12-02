
import 'package:bloc/bloc.dart';

part 'counterState.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(InitialCounterState());

    void increment() {
      emit(CounterStateData(state.counter + 1));
    }

    void decrement() {
      emit(CounterStateData(state.counter - 1));
    }
}