import 'package:equatable/equatable.dart';
import 'package:petitparser/petitparser.dart';

class FormattedSource {
  const FormattedSource({
    required this.source,
    required this.tokens,
  });

  final String source;
  final List<FormattedToken> tokens;
}

class FormattedToken extends Equatable {
  const FormattedToken({
    required this.type,
    required this.token,
  });
  final FormattedTokenType type;
  final Token token;

  @override
  List<Object?> get props => [type, token.start, token.stop];
}

enum FormattedTokenType {
  none,
  keyword,
  methodName,
  tag,
  objectKey,
  stringLiteral,
  doubleLiteral,
}
