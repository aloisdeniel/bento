import 'dart:io';

import 'package:bento/src/theme/emitter.dart';
import 'package:bento/src/theme/models.dart';
import 'package:bento/src/widgets/emitter.dart';
import 'package:bento/src/widgets/models.dart';
import 'package:path/path.dart';

import 'models.dart';

class BentoProjectDartBuilder {
  const BentoProjectDartBuilder();

  final themeEmitter = const BentoThemeDartEmitter();
  final widgetEmitter = const BentoWidgetDartEmitter();
  Future<void> build(BentoProject project, Directory output) async {
    final lib = Directory(join(output.path, 'lib'));

    if (!lib.existsSync()) {
      await lib.create(recursive: true);
    }

    final src = Directory(join(lib.path, 'src'));

    if (!src.existsSync()) {
      await src.create(recursive: true);
    }

    // Themes
    if (project.themes.isNotEmpty) {
      final themes = Directory(join(src.path, 'themes'));

      if (!themes.existsSync()) {
        await themes.create(recursive: true);
      }

      await _generate<BentoTheme>(themes, project.themes, (theme) {
        return themeEmitter.emitDart(theme);
      });
    }

    // Widgets
    if (project.widgets.isNotEmpty) {
      final themes = Directory(join(src.path, 'widgets'));

      if (!themes.existsSync()) {
        await themes.create(recursive: true);
      }

      await _generate<BentoWidget>(themes, project.widgets, (theme) {
        return widgetEmitter.emitDart(theme);
      });
    }
  }

  Future<void> _generate<T>(
    Directory directory,
    List<BentoItem<T>> items,
    String Function(T value) emit,
  ) async {
    for (var item in items) {
      await item.map(
        file: (file) {
          final content = emit(file.content);
          final output = File(join(directory.path, '${file.name}.dart'));
          return output.writeAsString(content);
        },
        directory: (child) async {
          final output = Directory(join(directory.path, child.name));

          if (!output.existsSync()) {
            await output.create(recursive: true);
          }

          return await _generate<T>(
            output,
            child.children,
            emit,
          );
        },
      );
    }
  }
}
