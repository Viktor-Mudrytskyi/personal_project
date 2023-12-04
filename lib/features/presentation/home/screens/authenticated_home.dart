import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secure_application/secure_application.dart';

import '../../../domain/entities/entities.dart';
import '../../../features.dart';
import '../bloc/to_do/to_do_cubit.dart';
import '../bloc/to_do/to_do_state.dart';
import '../widgets/create_to_do.dart';

class AuthenticatedHome extends StatelessWidget {
  const AuthenticatedHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ToDoCubit(toDoUseCases: ToDoUseCases())..getToDos(),
      child: Builder(builder: (context) {
        final todoCubit = context.read<ToDoCubit>();
        return Scaffold(
          body: Column(
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    SecureApplicationProvider.of(context)?.lock();
                  },
                  child: const Text('LOCK'),
                ),
              ),
              Expanded(
                child: BlocBuilder<ToDoCubit, ToDoState>(
                  builder: (context, state) {
                    if (state is LoadedToDoState) {
                      return SecureGate(
                        blurr: 5,
                        lockedBuilder: (context, secureApplicationController) {
                          return Center(
                            child: ElevatedButton(
                              onPressed: () {
                                secureApplicationController?.unlock();
                              },
                              child: const Text('Unlock'),
                            ),
                          );
                        },
                        child: CustomScrollView(
                          slivers: [
                            SliverList.list(
                              children: [
                                ...state.todos.map(
                                  (e) => Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: ToDoCard(
                                      toDoEntity: ToDoEntity(
                                        title: e.title,
                                        imgUrl: e.imgUrl,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }
                    if (state is LoadingToDoState) {
                      return const LoadingSpinner();
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => CreateToDoDialog(
                  onCreate: (file, title) {
                    todoCubit.createToDo(file, title);
                  },
                ),
              );
            },
            child: const Icon(Icons.add),
          ),
        );
      }),
    );
  }
}
