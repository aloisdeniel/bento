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
  writeSvgPathDataToPath(path.data, PathDartCodeProxy(offset, result));

  return result.toString();
}

class PathDartCodeProxy extends PathProxy {
  PathDartCodeProxy(this.offset, this.result);
  final StringBuffer result;
  final Offset offset;

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
        '${offset.dx + x1}'
        ','
        '${offset.dy + y1}'
        ','
        '${offset.dx + x2}'
        ','
        '${offset.dy + y2}'
        ','
        '${offset.dx + x3}'
        ','
        '${offset.dy + y3}'
        ')');
  }

  @override
  void lineTo(double x, double y) {
    result.writeln('..lineTo(${offset.dx + x},${offset.dy + y})');
  }

  @override
  void moveTo(double x, double y) {
    result.writeln('..moveTo(${offset.dx + x},${offset.dy + y})');
  }

  @override
  void close() {
    result.writeln('..close()');
  }
}
