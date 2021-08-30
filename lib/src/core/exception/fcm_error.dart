class FcmError implements Exception {
  const FcmError(this.message);

  /// Error message
  final String message;

  @override
  String toString() => 'AuthError(message: $message)';
}
