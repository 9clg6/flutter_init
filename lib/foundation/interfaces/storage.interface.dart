/// Storage to manage secret data securely locally
abstract class StorageInterface<T> {
  /// Get a string value from secure storage
  Future<T> get(String key);

  /// Set a string value in secure storage
  Future<void> set(String key, String value);

  /// Remove a string value from secure storage
  Future<void> remove(String key);

  /// Remove a string value in list from secure storage
  Future<void> removeFromList(String key, String value);

  /// Check if the storage contains [key]
  Future<bool> contains(String key);

  /// Delete all the data
  Future<void> deleteAll();
}
