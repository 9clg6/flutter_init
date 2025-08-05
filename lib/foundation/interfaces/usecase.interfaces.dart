/// Abstract interface for base use case
// ignore_for_file: one_member_abstracts, dangling_library_doc_comments TODO rm

abstract interface class BaseUseCase<R> {
  /// execute
  R execute();
}

/// Abstract interface for base use case with params
abstract interface class BaseUseCaseWithParams<R, P> {
  /// execute
  R execute(P params);
}
