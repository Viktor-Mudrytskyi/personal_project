import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import '../core.dart';

class AppBlocObserver extends BlocObserver {
  static final logger = injector<Logger>();
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    logger.v('''${bloc.runtimeType} has changed state
    Previous: ${change.currentState.runtimeType}
    Current: ${change.nextState.runtimeType}
    ''');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    logger.d('${bloc.runtimeType} has been closed');
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    logger.d('''${bloc.runtimeType} has been created
    Current state: ${bloc.state.runtimeType}''');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.d('An error occured in ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);

    logger.d('A new event has been added to ${bloc.runtimeType}');
  }

  //TODO maybe overwrite in future
  // @override
  // void onTransition(Bloc bloc, Transition transition) {
  //   transition.event
  // }
}
