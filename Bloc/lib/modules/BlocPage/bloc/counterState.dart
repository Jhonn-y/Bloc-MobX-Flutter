
part of 'counterBloc.dart';

abstract class CounterState {

  final int counter;
  CounterState(this.counter);

}

class InitialCounterState extends CounterState {
  InitialCounterState() : super(0);
}

class CounterStateData extends CounterState {
  CounterStateData(int counter) : super(counter);
}