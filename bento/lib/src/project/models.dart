import 'package:bento/src/theme/models.dart';
import 'package:bento/src/widgets/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class BentoProjectConfiguration with _$BentoProjectConfiguration {
  const BentoProjectConfiguration._();

  const factory BentoProjectConfiguration({
    required String name,
    @Default(const BentoDartOptions()) BentoDartOptions dart,
  }) = _BentoProjectConfiguration;

  factory BentoProjectConfiguration.fromJson(Map<String, Object?> json) =>
      _$BentoProjectConfigurationFromJson(json);
}

@freezed
class BentoDartOptions with _$BentoDartOptions {
  const BentoDartOptions._();

  const factory BentoDartOptions({
    @Default(true) bool equatable,
    @Default(false) bool lazyInstances,
    @Default(true) bool reflect,
    @Default(true) bool tests,
    String? assetPackage,
  }) = _BentoDartOptions;

  factory BentoDartOptions.fromJson(Map<String, Object?> json) =>
      _$BentoDartOptionsFromJson(json);
}

@freezed
class BentoProject with _$BentoProject {
  const BentoProject._();

  const factory BentoProject({
    required BentoProjectConfiguration configuration,
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
