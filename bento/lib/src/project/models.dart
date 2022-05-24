import 'package:bento/src/theme/models.dart';
import 'package:bento/src/widgets/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@freezed
class BentoProject with _$BentoProject {
  const BentoProject._();

  const factory BentoProject({
    required String name,
    required List<BentoItem<BentoTheme>> themes,
    required List<BentoItem<BentoWidget>> widgets,
  }) = _BentoProject;
}

@freezed
class BentoItem<T> with _$BentoItem<T> {
  const BentoItem._();

  const factory BentoItem.file({
    required String name,
    required T content,
  }) = BentoFile<T>;

  const factory BentoItem.directory({
    required String name,
    required List<BentoItem<T>> children,
  }) = BentoDirectory<T>;
}
