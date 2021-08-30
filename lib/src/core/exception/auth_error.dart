class AuthError implements Exception {
  const AuthError(this.message);

  /// Error message
  final String message;

  @override
  String toString() => 'AuthError(message: $message)';
}
