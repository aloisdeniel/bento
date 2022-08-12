import 'package:bento/bento.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

final projectStatePod = StateProvider<BentoProjectState?>((ref) {
  return const BentoProjectState(
    name: 'Draft',
    themes: [],
    widgets: [],
  );
});

class ProjectActions {
  const ProjectActions(this.ref);
  final ProviderContainer ref;

  void createTheme() {
    final previousState = ref.read(projectStatePod);
    if (previousState != null) {
      const initialName = 'theme';
      var name = initialName;
      var index = 0;

      while (previousState.themes.any((theme) => theme.name == name)) {
        name = '${initialName}_$index';
        index++;
      }

      ref.read(projectStatePod.notifier).state = previousState.copyWith(
        themes: [
          ...previousState.themes,
          BentoItemState<BentoTheme>.file(
            name: name,
            state: BentoCompilationState.success(
              BentoTheme(
                name: name,
                tokens: [],
                children: [],
              ),
            ),
            source: '',
          ),
        ],
      );
    }
  }
}

extension ProjectActionExtensions on BuildContext {
  ProjectActions get project => ProjectActions(
        ProviderScope.containerOf(this),
      );
}

@freezed
class BentoProjectState with _$BentoProjectState {
  const BentoProjectState._();

  const factory BentoProjectState({
    required String name,
    required List<BentoItemState<BentoTheme>> themes,
    required List<BentoItemState<BentoWidget>> widgets,
  }) = _BentoProjectState;
}

@freezed
class BentoItemState<T> with _$BentoItemState<T> {
  const BentoItemState._();

  const factory BentoItemState.file({
    required String name,
    required BentoCompilationState<T> state,
    required String source,
  }) = BentoFileState<T>;

  const factory BentoItemState.directory({
    required String name,
    required List<BentoItemState<T>> children,
  }) = BentoDirectoryState<T>;
}

@freezed
class BentoCompilationState<T> with _$BentoCompilationState<T> {
  const BentoCompilationState._();

  const factory BentoCompilationState.success(T value) =
      BentoCompilationSuccessState<T>;

  const factory BentoCompilationState.failure({
    required String error,
  }) = BentoCompilationFailureState<T>;
}
