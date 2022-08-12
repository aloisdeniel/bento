import 'dart:io';

import 'package:bento/src/project/emitters/exports.dart';
import 'package:bento/src/theme/emitters/data.dart';
import 'package:bento/src/theme/emitters/golden_test.dart';
import 'package:bento/src/theme/emitters/theme.dart';
import 'package:bento/src/theme/models.dart';
import 'package:bento/src/widgets/emitter.dart';
import 'package:bento/src/widgets/models.dart';
import 'package:path/path.dart';
import 'package:recase/recase.dart';

import 'models.dart';

class BentoProjectDartBuilder {
  const BentoProjectDartBuilder();

  Future<void> build(BentoProject project, Directory output) async {
    final themeDataEmitter =
        BentoThemeDataDartEmitter(options: project.configuration.dart);
    final themeEmitter = const BentoThemeDartEmitter();
    final widgetEmitter = const BentoWidgetDartEmitter();
    final exportEmitter = const BentoProjectExportEmitter();
    final goldens = const BentoThemeGoldenTestEmitter();

    final lib = Directory(join(output.path, 'lib'));

    if (!lib.existsSync()) {
      await lib.create(recursive: true);
    }

    final src = Directory(join(lib.path, 'src'));

    if (!src.existsSync()) {
      await src.create(recursive: true);
    }

    final test = Directory(join(output.path, 'test'));

    if (!test.existsSync()) {
      await test.create(recursive: true);
    }

    // Themes
    if (project.themes.isNotEmpty) {
      final themes = Directory(join(src.path, 'themes'));
      final testThemes = Directory(join(test.path, 'themes'));

      if (!themes.existsSync()) {
        await themes.create(recursive: true);
      }

      await _generate<BentoTheme>(
        themes,
        project.themes,
        (name) => '${name}_data.g.dart',
        (theme) {
          return themeDataEmitter.emitDart(theme);
        },
      );

      await _generate<BentoTheme>(
        themes,
        project.themes,
        (name) => '${name}.g.dart',
        (theme) {
          return themeEmitter.emitDart(theme);
        },
      );

      // Tests
      if (project.configuration.dart.tests) {
        final test = Directory(join(output.path, 'test'));

        if (!test.existsSync()) {
          await test.create(recursive: true);
        }

        final testThemes = Directory(join(test.path, 'themes'));

        if (!testThemes.existsSync()) {
          await testThemes.create(recursive: true);
        }

        await _generate<BentoTheme>(
          testThemes,
          project.themes,
          (name) => '${name}_test.dart',
          (theme) {
            return goldens.emitDart(theme);
          },
        );
        final galleryFile = File(join(testThemes.path, 'gallery.g.dart'));
        if (!galleryFile.existsSync())
          await galleryFile.writeAsString(BentoThemeGoldenTestEmitter.gallery);

        final exports = exportEmitter.emitThemes(project);
        final exportFile = File(join(lib.path, 'themes.g.dart'));
        await exportFile.writeAsString(exports);
      }
    }

    // Widgets
    if (project.widgets.isNotEmpty) {
      final themes = Directory(join(src.path, 'widgets'));

      if (!themes.existsSync()) {
        await themes.create(recursive: true);
      }

      await _generate<BentoWidget>(
        themes,
        project.widgets,
        (name) => '${name}.dart',
        (theme) {
          return widgetEmitter.emitDart(theme);
        },
      );

      final exports = exportEmitter.emitWidgets(project);
      final exportFile = File(join(lib.path, 'widgets.g.dart'));
      await exportFile.writeAsString(exports);
    }
  }

  Future<void> _generate<T>(
    Directory directory,
    List<BentoItem<T>> items,
    String Function(String name) fileName,
    String Function(T value) emit,
  ) async {
    for (var item in items) {
      final name = ReCase(item.name).snakeCase;
      await item.map(
        file: (file) {
          final content = emit(file.content);
          final output = File(join(directory.path, fileName(name)));
          return output.writeAsString(content);
        },
        directory: (child) async {
          final output = Directory(join(directory.path, name));

          if (!output.existsSync()) {
            await output.create(recursive: true);
          }

          return await _generate<T>(
            output,
            child.children,
            fileName,
            emit,
          );
        },
      );
    }
  }
}
