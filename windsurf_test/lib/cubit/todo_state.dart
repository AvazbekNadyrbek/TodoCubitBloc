part of 'todo_cubit.dart';


class TodoState extends Equatable {
  final List<Task> tasks;
  
  const TodoState({
    this.tasks = const [],
  });

  @override
  List<Object?> get props => [tasks];

  TodoState copyWith({
    List<Task>? tasks,
  }) {
    return TodoState(
      tasks: tasks ?? this.tasks,
    );
  }
}