import 'package:bento/src/theme/models.dart';
import 'package:path_parsing/path_parsing.dart';

String emitPathData(Offset offset, List<IconPath> paths) {
  final result = StringBuffer('Path()');
  for (var path in paths) {
    if (paths.length > 1) {
      result.writeln('..addPath(Path()');
    }
    result.writeln('..fillType = ${path.windingRule}');
    writeSvgPathDataToPath(path.data, PathDartCodeProxy(result));

    if (paths.length > 1) {
      result.writeln(', Offset.zero,)');
    }
  }

  return result.toString();
}

class PathDartCodeProxy extends PathProxy {
  PathDartCodeProxy(this.result);
  final StringBuffer result;

  @override
  void cubicTo(
    double x1,
    double y1,
    double x2,
    double y2,
    double x3,
    double y3,
  ) {
    result.writeln('..cubicTo('
        '${x1}'
        ','
        '${y1}'
        ','
        '${x2}'
        ','
        '${y2}'
        ','
        '${x3}'
        ','
        '${y3}'
        ')');
  }

  @override
  void lineTo(double x, double y) {
    result.writeln('..lineTo(${x},${y})');
  }

  @override
  void moveTo(double x, double y) {
    result.writeln('..moveTo(${x},${y})');
  }

  @override
  void close() {
    result.writeln('..close()');
  }
}
