class BentoParsingError {
  const BentoParsingError(
    this.message, {
    this.sourceOffset,
  });
  final String message;
  final int? sourceOffset;
}
