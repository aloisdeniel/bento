import 'package:bento/src/theme/models.dart';
import 'package:bento/src/widgets/models.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart';
import 'package:recase/recase.dart';

import '../models.dart';

class BentoProjectExportEmitter {
  const BentoProjectExportEmitter({
    this.equatable = true,
  });

  final bool equatable;

  String emitThemes(BentoProject project) {
    final library = LibraryBuilder();

    library.directives.addAll([
      Directive.export('package:path_icon/path_icon.dart'),
      ...project.themes
          .map((theme) => _exportTheme('src/themes', theme))
          .expand((e) => e),
    ]);

    final emitter = DartEmitter();
    final source = '${library.build().accept(emitter)}'; //.fixTrailingCommas();
    return DartFormatter().format(source);
  }

  String emitWidgets(BentoProject project) {
    final library = LibraryBuilder();

    library.directives.addAll([
      ...project.widgets
          .map((widget) => _exportWidget('src/widgets', widget))
          .expand((e) => e),
    ]);

    final emitter = DartEmitter();
    final source = '${library.build().accept(emitter)}'; //.fixTrailingCommas();
    return DartFormatter().format(source);
  }

  List<Directive> _exportTheme(String parent, BentoItem<BentoTheme> item) {
    final name = ReCase(item.name).snakeCase;
    return item.map(
      file: (file) {
        final output = join(parent, name);
        return [
          Directive.export('$output.dart'),
          Directive.export('${output}_data.dart'),
        ];
      },
      directory: (child) {
        final output = join(parent, name);
        return [
          for (var element in child.children)
            ..._exportTheme(
              output,
              element,
            )
        ];
      },
    );
  }

  List<Directive> _exportWidget(String parent, BentoItem<BentoWidget> item) {
    final name = ReCase(item.name).snakeCase;
    return item.map(
      file: (file) {
        final output = join(parent, name);
        return [
          Directive.export('$output.dart'),
        ];
      },
      directory: (child) {
        final output = join(parent, name);
        return [
          for (var element in child.children)
            ..._exportWidget(
              output,
              element,
            )
        ];
      },
    );
  }
}
