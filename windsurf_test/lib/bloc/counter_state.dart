part of 'counter_bloc.dart';

@immutable
sealed class CounterState {
  final int count;
  final String? errorMessage;
  
  const CounterState({
    required this.count,
    this.errorMessage,
  });
}

final class CounterInitial extends CounterState {
  const CounterInitial() : super(count: 0);
}

final class CounterValue extends CounterState {
  const CounterValue(int count) : super(count: count);
}

final class CounterError extends CounterState {
  const CounterError({
    required int count,
    required String message,
  }) : super(count: count, errorMessage: message);
}
