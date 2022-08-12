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
