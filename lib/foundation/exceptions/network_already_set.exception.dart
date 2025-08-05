/// Exception thrown when a network is already set
final class NetworkAlreadySetException implements Exception {
  /// Constructor
  const NetworkAlreadySetException(this.message);

  /// Message
  final String message;
}
