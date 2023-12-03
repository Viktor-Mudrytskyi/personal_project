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
          appBar: AppBar(),
          body: state.map(
            authenticated: (val) => const AuthenticatedHome(),
            unauthenticated: (val) => const Text('Unauthenticated'),
            loading: (val) => const LoadingSpinner(),
            error: (val) => const Text('error'),
          ),
        );
      },
    );
  }
}
