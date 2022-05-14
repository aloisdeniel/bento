import 'dart:io';

import 'package:flutter/painting.dart';
import 'package:bento/bento.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Parsing the example token file', () async {
    final data = await File('example/lib/theme/AppTheme.json').readAsString();
    final library = const DesignLibraryParser().parseJson(data);
    expect(library.children, isNotEmpty);

    // Size
    final sizes = library.getChildLibrary(['sizes']);
    expect(sizes, isNotNull);
    expect(sizes!.tokens, isNotEmpty);
    final size32 = sizes.getToken('32');
    expect(size32, isNotNull);
    expect(
      size32!.value.maybeMap(
        dimension: (x) => true,
        orElse: () => false,
      ),
      isTrue,
    );

    expect(
      size32.value.maybeMap(
        dimension: (x) => x,
        orElse: () => throw Exception(),
      ),
      equals(const DesignTokenValue.dimension(32.72)),
    );

    // Spacing
    final spacing = library.getChildLibrary(['spacing']);
    expect(spacing, isNotNull);
    expect(spacing!.tokens, isNotEmpty);
    final spacingMixed = spacing.getToken('mixed');
    expect(spacingMixed, isNotNull);

    expect(
      spacingMixed!.value.maybeMap(
        spacing: (x) => true,
        orElse: () => false,
      ),
      isTrue,
    );

    expect(
      spacingMixed.value.maybeMap(
        spacing: (x) => x,
        orElse: () => throw Exception(),
      ),
      equals(
        const DesignTokenValue.spacing(
          EdgeInsets.only(
            left: 20,
            right: 20,
            top: 10,
            bottom: 30,
          ),
        ),
      ),
    );

    // Radius
    final radii = library.getChildLibrary(['radii']);
    expect(radii, isNotNull);
    expect(radii!.tokens, isNotEmpty);
    final radiusMixed = radii.getToken('mixed');
    expect(radiusMixed, isNotNull);
    expect(
      radiusMixed!.value.maybeMap(
        radius: (x) => true,
        orElse: () => false,
      ),
      isTrue,
    );

    expect(
      radiusMixed.value.maybeMap(
        radius: (x) => x,
        orElse: () => throw Exception(),
      ),
      equals(
        const DesignTokenValue.radius(
          smoothing: 0.5,
          radius: BorderRadius.only(
            topLeft: Radius.circular(5.5),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(15),
            bottomLeft: Radius.circular(20),
          ),
        ),
      ),
    );

    // Color
    final lightColor = library.getChildLibrary(['color', 'light']);
    expect(lightColor, isNotNull);
    expect(lightColor!.tokens, isNotEmpty);
    final lightColorBackground = lightColor.getToken('background');
    expect(lightColorBackground, isNotNull);
    expect(
      lightColorBackground!.value.maybeMap(
        color: (x) => true,
        orElse: () => false,
      ),
      isTrue,
    );

    expect(
      lightColorBackground.value.maybeMap(
        color: (x) => x,
        orElse: () => throw Exception(),
      ),
      equals(
        const DesignTokenValue.color(
          Color(0xFFFFFFFF),
        ),
      ),
    );

    // Font style
    final body = library.getChildLibrary(['font', 'body']);
    expect(body, isNotNull);
    expect(body!.tokens, isNotEmpty);
    final h3 = body.getToken('h3');
    expect(h3, isNotNull);
    expect(
      h3!.value.maybeMap(
        fontStyle: (x) => true,
        orElse: () => false,
      ),
      isTrue,
    );

    expect(
      h3.value.maybeMap(
        fontStyle: (x) => x,
        orElse: () => throw Exception(),
      ),
      equals(
        const DesignTokenValue.fontStyle(
          textStyle: TextStyle(
            fontFamily: 'Akzidenz-Grotesk Pro',
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
            fontSize: 20,
            letterSpacing: 0.4,
          ),
        ),
      ),
    );
  });
}
