///
/// [ExtraClient]
///
class ExtraClient {
  /// removeAuthToken
  ///
  /// use this key when you to tell that the request
  /// should don't add the authorization header or not
  ///
  /// without it the request will add the header
  static const String removeAuthToken = 'removeAuthToken';

  /// removeContentType
  ///
  /// use this key when you to tell that the request
  /// should don't add the content type or not
  ///
  /// without it the request will add the content type application/json
  static const String removeContentType = 'removeContentType';
}
