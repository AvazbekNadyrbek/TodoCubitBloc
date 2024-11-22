import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial()) {
    on<CounterIncrementPressed>((event, emit) {
      emit(CounterValue(state.count + 1));
    });

    on<CounterDecrementPressed>((event, emit) {
      if (state.count > 0) {
        emit(CounterValue(state.count - 1));
      } else {
        emit(CounterError(
          count: state.count,
          message: 'Cannot decrease below zero',
        ));
        // Optionally, revert back to normal state after showing error

      }
    });
  }
}
