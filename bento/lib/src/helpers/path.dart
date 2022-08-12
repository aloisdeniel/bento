import 'package:bento/src/theme/models.dart';
import 'package:path_parsing/path_parsing.dart';

String emitPathData(Offset offset, List<IconPath> paths) {
  if (paths.isEmpty) {
    return 'Path()';
  }

  if (paths.length == 1) {
    return emitData(offset, paths.first);
  }

  var result = '';

  for (var i = 0; i < paths.length; i++) {
    final newPath = emitData(offset, paths[i]);

    if (result.isEmpty) {
      result = newPath;
    } else {
      result = 'Path.combine(PathOperation.union,$result,$newPath,)';
    }
  }

  return result;
}

String emitData(Offset offset, IconPath path) {
  final result = StringBuffer('Path()');

  result.writeln('..fillType = ${path.windingRule}');
  writeSvgPathDataToPath(path.data, PathDartCodeProxy(result));

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
