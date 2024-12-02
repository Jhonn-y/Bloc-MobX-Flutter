
import 'package:bloc/bloc.dart';

part 'counterEvent.dart';
part 'counterState.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState> {
  CounterBloc(): super(InitialCounterState()){
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
  }

  void _increment(IncrementCounter event, Emitter<CounterState> emit){
    emit(CounterStateData(state.counter + 1));
  }
  void _decrement(DecrementCounter event, Emitter<CounterState> emit){
    emit(CounterStateData(state.counter - 1));
  }
  
}