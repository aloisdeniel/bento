import 'package:bento/src/helpers/naming.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:recase/recase.dart';

import '../models.dart';

class BentoThemeGoldenTestEmitter {
  const BentoThemeGoldenTestEmitter();

  String emitDart(BentoTheme theme) {
    final fileName = ReCase(theme.name).snakeCase;
    final dataClassName = theme.name.asClassname();
    final library = LibraryBuilder();

    library.directives.addAll([
      Directive.import('package:flutter/material.dart'),
      Directive.import('package:flutter_test/flutter_test.dart'),
      Directive.import('../../lib/src/themes/${fileName}_data.dart'),
      Directive.import('gallery.dart'),
    ]);

    final body = StringBuffer();

    body.writeln('''
  testWidgets('${dataClassName} gallery', (WidgetTester tester) async {
    await tester.runAsync(() => loadFonts());

    debugDisableShadows = false;
    tester.binding.window.physicalSizeTestValue = const Size(1440, 50000);
    tester.binding.window.devicePixelRatioTestValue = 1;

    final theme = ${dataClassName}Data.fallback;
    final key = GlobalKey();
    final gallery = Gallery(
      contentKey: key, 
      name: r'${dataClassName}',
    ''');

    // TODO _emitTokens(body, ['theme'], theme.tokens);

    if (theme.children.isNotEmpty) {
      body.write('sections: [');
      for (var child in theme.children) {
        _emitSection(body, ['theme'], child);
      }
      body.write(']');
    }

    body.writeln('''
 );
    await tester.pumpWidget(gallery);

    final height = key.currentContext?.size?.height;
    tester.binding.window.physicalSizeTestValue =
        Size(tester.binding.window.physicalSize.width, height ?? 50000);

    await tester.pumpWidget(gallery);

    await expectLater(
      find.byType(Gallery),
      matchesGoldenFile(
        '${fileName}.png',
      ),
    );

    debugDisableShadows = true;
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    addTearDown(tester.binding.window.clearDevicePixelRatioTestValue);
  });
''');

    final main = MethodBuilder()
      ..returns = refer('void')
      ..name = 'main'
      ..body = Code(body.toString());

    library.body.add(main.build());

    final emitter = DartEmitter();
    final source = '${library.build().accept(emitter)}';
    return DartFormatter().format(source);
  }

  void _emitTokens(
      StringBuffer body, List<String> path, List<DesignToken> tokens) {
    final supportedTokens = tokens.where(
      (x) => x.value.maybeMap(
        color: (_) => true,
        fontStyle: (_) => true,
        icon: (_) => true,
        orElse: () => false,
      ),
    );
    if (supportedTokens.isNotEmpty) {
      body.writeln('tokens: [');
      for (var token in supportedTokens) {
        body.writeln(
          token.value.maybeMap(
            color: (_) => 'ColorGalleryToken(',
            fontStyle: (_) => 'TextStyleGalleryToken(',
            icon: (_) => 'IconGalleryToken(',
            orElse: () => throw Exception(),
          ),
        );
        body.writeln('name: r\'${token.name.asFieldname()}\',');
        body.writeln('value: ${path.join('.')}.${token.name.asFieldname()},');
        body.writeln('),');
      }
      body.writeln('],');
    }
  }

  void _emitSection(StringBuffer body, List<String> path, BentoTheme theme) {
    final themeFieldName = theme.name.asFieldname();
    path = [...path, themeFieldName];

    body.writeln('GallerySection(');
    body.writeln('  name: r\'${themeFieldName}\',');

    _emitTokens(body, path, theme.tokens);
    body.writeln('children: [');
    if (theme.children.isNotEmpty) {
      for (var child in theme.children) {
        _emitSection(body, path, child);
      }
    }
    body.writeln('],');

    body.writeln('),');
  }

  static const gallery = r'''
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_icon/path_icon.dart';

Future<void> loadFonts() async {
  await _loadFont('Roboto', [
    'Roboto-Regular.ttf',
    'Roboto-Bold.ttf',
    'Roboto-Black.ttf',
    'Roboto-Medium.ttf',
    'Roboto-Light.ttf',
    'Roboto-Thin.ttf',
  ]);

  // Load your custom fonts here
}

Future<void> _loadFont(String name, List<String> files) async {
  final flutterRoot = Directory(Platform.environment['FLUTTER_ROOT']!);

  final loader = FontLoader(name);
  for (var file in files) {
    final path = 'bin/cache/artifacts/material_fonts/${file}';
    final font = File(
        flutterRoot.path + (flutterRoot.path.endsWith('/') ? '' : '/') + path);

    final bytes = Future<ByteData>.value(
      font.readAsBytesSync().buffer.asByteData(),
    );

    loader.addFont(bytes);
  }
  await loader.load();
}

class Gallery extends StatelessWidget {
  const Gallery({
    super.key,
    required this.name,
    required this.sections,
    required this.contentKey,
  });

  final Key contentKey;
  final String name;
  final List<GallerySection> sections;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            key: contentKey,
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  name,
                  style: theme.textTheme.headline1,
                ),
                ...sections,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GallerySection extends StatelessWidget {
  const GallerySection({
    super.key,
    required this.name,
    this.tokens = const <GalleryToken>[],
    this.children = const <GallerySection>[],
  });

  final String name;
  final List<GalleryToken> tokens;
  final List<GallerySection> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        top: 24.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            name,
            style: theme.textTheme.headline4,
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 12.0,
            ),
            padding: const EdgeInsets.only(
              left: 24.0,
            ),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ...tokens.map((token) => GalleryTokenTile(
                      token: token,
                    )),
                ...children,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GalleryTokenTile extends StatelessWidget {
  const GalleryTokenTile({
    super.key,
    required this.token,
  });

  final GalleryToken token;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(top: 12),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            child: token,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              token.name,
              style: theme.textTheme.headline5,
            ),
          ),
        ],
      ),
    );
  }
}

abstract class GalleryToken<T> extends StatelessWidget {
  const GalleryToken({
    super.key,
    required this.name,
    required this.value,
  });

  final String name;
  final T value;
}

class ColorGalleryToken extends GalleryToken<Color> {
  const ColorGalleryToken({
    super.key,
    required super.name,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: value,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 20,
          ),
        ],
      ),
    );
  }
}

class TextStyleGalleryToken extends GalleryToken<TextStyle> {
  const TextStyleGalleryToken({
    super.key,
    required super.name,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: value.copyWith(
        color: Colors.black,
      ),
    );
  }
}

class IconGalleryToken extends GalleryToken<PathIconData> {
  const IconGalleryToken({
    super.key,
    required super.name,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return PathIcon(
      value,
      size: 32,
      color: Colors.black,
    );
  }
}
''';
}
