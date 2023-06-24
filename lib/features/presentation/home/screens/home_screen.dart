import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../../features.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return state.map(
              authenticated: (state) => Container(
                color: Colors.blue,
                child: Center(
                  child: Column(
                    children: [
                      Text(FirebaseAuth.instance.currentUser!.email!),
                      Text(FirebaseAuth.instance.currentUser!.emailVerified
                          .toString()),
                      ElevatedButton(
                        onPressed: () async {
                          context.router.replaceAll([const LoginRoute()]);
                          await injector<AuthUseCase>().logOut();
                        },
                        child: const Text('LOGOUT'),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          await FirebaseAuth.instance.currentUser!.reload();
                        },
                        child: const Text('RELOAD'),
                      ),
                    ],
                  ),
                ),
              ),
              unuthenticated: (state) => const ColoredBox(color: Colors.yellow),
              loading: (state) => const LoadingSpinner(),
              error: (state) => const ColoredBox(color: Colors.red),
            );
          },
        ),
      ),
    );
  }
}
