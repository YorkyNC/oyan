import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/loggers/logger.dart';
import '../context/context_activity_bloc.dart';

abstract class BaseCubit<S> extends Cubit<S> {

  BaseCubit(S initialState) : super(initialState);
  ContextActivityBloc? contextActivity;

  void withContextHandler(ContextActivityBloc contextActivityBloc) {
    contextActivity = contextActivityBloc;
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    Log.e('CubitError: ${error.toString()}');
    super.onError(error, stackTrace);
  }
}
