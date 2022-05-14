import 'parser.dart';

class WidgetEmitter {
  const WidgetEmitter();
  String emitDart(String name, String source) {
    final model = const WidgetParser().parseDart(name, source);
    throw Exception();
  }
}
