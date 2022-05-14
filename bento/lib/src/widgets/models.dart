import 'package:analyzer/dart/ast/ast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@freezed
class BentoWidget with _$BentoWidget {
  const BentoWidget._();

  const factory BentoWidget({
    required String name,
    required CompilationUnit unit,
    required List<BentoWidgetVariant> variants,
  }) = _BentoWidget;
}

@freezed
class BentoWidgetVariant with _$BentoWidgetVariant {
  const BentoWidgetVariant._();

  const factory BentoWidgetVariant({
    required FunctionDeclaration buildFunction,
  }) = _BentoWidgetVariant;
}
