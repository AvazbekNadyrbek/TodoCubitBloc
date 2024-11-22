import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:windsurf_test/models/task.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(const TodoState());

  void addTask(Task task) {
    final newTasks = List<Task>.from(state.tasks)..add(task);
    emit(state.copyWith(tasks: newTasks));
  }
  
   void removeTask(Task task) {
    final newTasks = List<Task>.from(state.tasks)..remove(task);
    emit(state.copyWith(tasks: newTasks));
  }
}
