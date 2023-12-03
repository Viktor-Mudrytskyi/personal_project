import '../../../../domain/entities/entities.dart';

abstract class ToDoState {}

class LoadedToDoState extends ToDoState {
  final List<ToDoEntity> todos;

  LoadedToDoState({required this.todos});
}

class LoadingToDoState extends ToDoState {}
