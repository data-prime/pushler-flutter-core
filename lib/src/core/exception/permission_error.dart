class PermissionError implements Exception {
  const PermissionError(this.message);

  /// Error message
  final String message;

  @override
  String toString() => 'AuthError(message: $message)';
}
