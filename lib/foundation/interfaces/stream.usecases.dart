import 'package:starter_kit/foundation/interfaces/results.usecases.dart';
import 'package:starter_kit/foundation/interfaces/usecase.interfaces.dart';

/// [StreamUseCase]
abstract class StreamUseCase<T> implements BaseUseCase<Stream<ResultState<T>>> {
  /// execute

  @override
  Stream<ResultState<T>> execute() async* {
    yield* _streamCatcher(invoke);
  }

  /// invoke
  Stream<T> invoke();
}

/// [StreamUseCaseWithParams]
abstract class StreamUseCaseWithParams<T, P>
    implements BaseUseCaseWithParams<Stream<ResultState<T>>, P> {
  @override
  Stream<ResultState<T>> execute(P params) async* {
    yield* _streamCatcher(() => invoke(params));
  }

  /// invoke
  Stream<T> invoke(P params);
}

/// [StreamUseCaseWithParams]
Stream<ResultState<T>> _streamCatcher<T>(Stream<T> Function() invoke) {
  try {
    final Stream<T> result = invoke();
    return result.map(ResultState<T>.success);
  } on Exception catch (e) {
    return Stream<ResultState<T>>.value(ResultState<T>.failure(e));
  }
}
