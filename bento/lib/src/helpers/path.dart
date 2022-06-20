import 'package:bento/src/theme/models.dart';

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

  final args = path.data.split(' ');
  var currentPoint = [0.0, 0.0];
  for (var i = 0; i < args.length;) {
    final operator = args[i++];
    if (operator == 'M') {
      final x = double.parse(args[i++]);
      final y = double.parse(args[i++]);
      result.writeln('..moveTo(${n(x, offset.dx)},${n(y, offset.dy)})');
      currentPoint = [x, y];
    } else if (operator == 'L') {
      final x = double.parse(args[i++]);
      final y = double.parse(args[i++]);
      result.writeln('..lineTo(${n(x, offset.dx)},${n(y, offset.dy)})');
      currentPoint = [x, y];
    } else if (operator == 'H') {
      final x = currentPoint[0] + double.parse(args[i++]);
      final y = currentPoint[1];
      result.writeln('..lineTo(${n(x, offset.dx)},${n(y, offset.dy)})');
      currentPoint = [x, y];
    } else if (operator == 'V') {
      final x = currentPoint[0];
      final y = currentPoint[1] + double.parse(args[i++]);
      result.writeln('..lineTo(${n(x, offset.dx)},${n(y, offset.dy)})');
      currentPoint = [x, y];
    } else if (operator == 'C') {
      final x1 = double.parse(args[i++]);
      final y1 = double.parse(args[i++]);
      final x2 = double.parse(args[i++]);
      final y2 = double.parse(args[i++]);
      final x3 = double.parse(args[i++]);
      final y3 = double.parse(args[i++]);
      result.writeln('..cubicTo('
          '${n(x1, offset.dx)}'
          ','
          '${n(y1, offset.dy)}'
          ','
          '${n(x2, offset.dx)}'
          ','
          '${n(y2, offset.dy)}'
          ','
          '${n(x3, offset.dx)}'
          ','
          '${n(y3, offset.dy)}'
          ')');
      currentPoint = [x3, y3];
    } else if (operator == 'Z') {
      result.writeln('..close()');
    } else {
      i++;
    }
  }

  return result.toString();
}

double n(double v, [double? offset]) {
  final value = v;

  return value + (offset ?? 0);
}
