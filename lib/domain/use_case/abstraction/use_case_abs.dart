///
/// [UseCaseWithParams]
/// 
abstract interface class UseCaseWithParams<T, P> {
  ///
  /// Execute use case
  ///
  T execute(P params);
}

///
/// [UseCase]
///
abstract interface class UseCase<T> {
  ///
  /// Execute use case
  ///
  T execute();
}
