import 'package:bloc/bloc.dart';

import '../../../../features.dart';
import 'to_do_state.dart';

class ToDoCubit extends Cubit<ToDoState> {
  ToDoCubit({required ToDoUseCases toDoUseCases})
      : _todoUseCase = toDoUseCases,
        super(LoadingToDoState());
  final ToDoUseCases _todoUseCase;

  Future<void> getToDos() async {
    emit(LoadingToDoState());
    final todos = await _todoUseCase.getToDoList();
    emit(LoadedToDoState(todos: todos));
  }
}
