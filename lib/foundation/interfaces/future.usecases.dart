import 'dart:async';

import 'package:starter_kit/foundation/interfaces/results.usecases.dart';
import 'package:starter_kit/foundation/interfaces/usecase.interfaces.dart';

/// [FutureUseCase]
abstract class FutureUseCase<T> implements BaseUseCase<Future<ResultState<T>>> {
  /// execute
  @override
  Future<ResultState<T>> execute() async {
    return _futureCatcher(invoke);
  }

  /// invoke
  Future<T> invoke();
}

/// [FutureUseCaseWithParams]
abstract class FutureUseCaseWithParams<T, P>
    implements BaseUseCaseWithParams<Future<ResultState<T>>, P> {
  /// execute
  @override
  Future<ResultState<T>> execute(P params) async {
    return _futureCatcher(() => invoke(params));
  }

  /// invoke
  Future<T> invoke(P params);
}

/// [FutureUseCaseWithParams]
Future<ResultState<T>> _futureCatcher<T>(Future<T> Function() invoke) async {
  try {
    final T result = await invoke().timeout(
      const Duration(seconds: 15),
      onTimeout: () {
        throw TimeoutException("L'opération a expiré après 15 secondes");
      },
    );
    return ResultState<T>.success(result);
  } on TimeoutException catch (e) {
    return ResultState<T>.failure(e);
  } on Exception catch (e) {
    return ResultState<T>.failure(e);
  }
}
