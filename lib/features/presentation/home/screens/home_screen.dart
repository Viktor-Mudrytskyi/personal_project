import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../../features.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
        state.mapOrNull(
          unauthenticated: (unauthenticated) => context.router.replaceAll([
            const LoginRoute(),
          ]),
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: SizedBox.expand(
            child: Center(
              child: state.map(
                authenticated: (val) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('HI!'),
                    Text(val.userInfo.email!),
                    ElevatedButton(
                      onPressed: () {
                        context.read<UserBloc>().add(LogOutUserEvent());
                      },
                      child: const Text('Logout'),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15),
                      child: ToDoCard(
                        toDoCardDto: ToDoCardDto(
                          title: 'Kostya Clown',
                          imgUrl:
                              'https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg',
                          isComplete: true,
                        ),
                      ),
                    ),
                  ],
                ),
                unauthenticated: (val) => const Text('Unauthenticated'),
                loading: (val) => const LoadingSpinner(),
                error: (val) => const Text('error'),
              ),
            ),
          ),
        );
      },
    );
  }
}
