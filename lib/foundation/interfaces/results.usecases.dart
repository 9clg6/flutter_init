/// UseCase Return State statuses
enum StateStatus {
  /// success
  success,

  /// failure
  failure,
}

/// UseCase Return State with custom exception
class ResultState<T> {
  const ResultState._({required this.status, this.data, this.exception});

  /// success
  factory ResultState.success(T data) =>
      ResultState<T>._(data: data, status: StateStatus.success);

  /// failure
  factory ResultState.failure(Exception exception) =>
      ResultState<T>._(exception: exception, status: StateStatus.failure);

  /// data
  final T? data;

  /// exception
  final Exception? exception;

  /// status
  final StateStatus status;

  /// when
  R? when<R>({
    R Function(T data)? success,
    R Function(Exception exception)? failure,
  }) {
    switch (status) {
      case StateStatus.success:
        return success != null ? success(data as T) : null;
      case StateStatus.failure:
        return failure != null ? failure(exception!) : null;
    }
  }
}
