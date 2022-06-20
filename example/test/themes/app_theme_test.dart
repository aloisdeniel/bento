import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../lib/src/themes/app_theme_data.dart';
import 'gallery.dart';

void main() {
  testWidgets('AppTheme gallery', (WidgetTester tester) async {
    await tester.runAsync(() => loadFonts());

    debugDisableShadows = false;
    tester.binding.window.physicalSizeTestValue = const Size(1440, 50000);
    tester.binding.window.devicePixelRatioTestValue = 1;

    final theme = AppThemeData.fallback;
    final key = GlobalKey();
    final gallery = Gallery(contentKey: key, name: r'AppTheme', sections: [
      GallerySection(
        name: r'sizes',
        children: [],
      ),
      GallerySection(
        name: r'breakpoints',
        children: [],
      ),
      GallerySection(
        name: r'spacing',
        children: [],
      ),
      GallerySection(
        name: r'borders',
        children: [
          GallerySection(
            name: r'unsupported',
            children: [],
          ),
        ],
      ),
      GallerySection(
        name: r'radius',
        children: [],
      ),
      GallerySection(
        name: r'radii',
        children: [],
      ),
      GallerySection(
        name: r'motion',
        children: [],
      ),
      GallerySection(
        name: r'gradient',
        children: [
          GallerySection(
            name: r'gradient',
            children: [
              GallerySection(
                name: r'multiplegrad',
                children: [],
              ),
            ],
          ),
        ],
      ),
      GallerySection(
        name: r'color',
        children: [
          GallerySection(
            name: r'colors',
            tokens: [
              ColorGalleryToken(
                name: r'singleBlue',
                value: theme.color.colors.singleBlue,
              ),
              ColorGalleryToken(
                name: r'refBlue',
                value: theme.color.colors.refBlue,
              ),
            ],
            children: [
              GallerySection(
                name: r'multipleFills',
                tokens: [
                  ColorGalleryToken(
                    name: r'v0',
                    value: theme.color.colors.multipleFills.v0,
                  ),
                  ColorGalleryToken(
                    name: r'v1',
                    value: theme.color.colors.multipleFills.v1,
                  ),
                ],
                children: [],
              ),
              GallerySection(
                name: r'specialCharacters',
                tokens: [
                  ColorGalleryToken(
                    name: r'c55357c56837',
                    value: theme.color.colors.specialCharacters.c55357c56837,
                  ),
                  ColorGalleryToken(
                    name: r'c228nderung',
                    value: theme.color.colors.specialCharacters.c228nderung,
                  ),
                ],
                children: [],
              ),
            ],
          ),
          GallerySection(
            name: r'invalid',
            tokens: [
              ColorGalleryToken(
                name: r'empty',
                value: theme.color.invalid.empty,
              ),
            ],
            children: [],
          ),
          GallerySection(
            name: r'light',
            tokens: [
              ColorGalleryToken(
                name: r'background',
                value: theme.color.light.background,
              ),
            ],
            children: [],
          ),
          GallerySection(
            name: r'dark',
            tokens: [
              ColorGalleryToken(
                name: r'background',
                value: theme.color.dark.background,
              ),
            ],
            children: [],
          ),
        ],
      ),
      GallerySection(
        name: r'grid',
        children: [
          GallerySection(
            name: r'multiple',
            children: [],
          ),
        ],
      ),
      GallerySection(
        name: r'font',
        children: [
          GallerySection(
            name: r'body',
            tokens: [
              TextStyleGalleryToken(
                name: r'h3',
                value: theme.font.body.h3,
              ),
              TextStyleGalleryToken(
                name: r'h4StrikeThrough',
                value: theme.font.body.h4StrikeThrough,
              ),
              TextStyleGalleryToken(
                name: r'italic',
                value: theme.font.body.italic,
              ),
              TextStyleGalleryToken(
                name: r'extraBoldCondensedItalic',
                value: theme.font.body.extraBoldCondensedItalic,
              ),
              TextStyleGalleryToken(
                name: r'mediumExtendedItalic',
                value: theme.font.body.mediumExtendedItalic,
              ),
              TextStyleGalleryToken(
                name: r'super$',
                value: theme.font.body.super$,
              ),
            ],
            children: [],
          ),
        ],
      ),
      GallerySection(
        name: r'effect',
        children: [
          GallerySection(
            name: r'innerShadowMultiple',
            children: [],
          ),
          GallerySection(
            name: r'layerBlur',
            children: [],
          ),
          GallerySection(
            name: r'backgroundBlur',
            children: [],
          ),
        ],
      ),
      GallerySection(
        name: r'typography',
        children: [
          GallerySection(
            name: r'body',
            children: [
              GallerySection(
                name: r'h3',
                children: [],
              ),
              GallerySection(
                name: r'h4StrikeThrough',
                children: [],
              ),
              GallerySection(
                name: r'italic',
                children: [],
              ),
              GallerySection(
                name: r'extraBoldCondensedItalic',
                children: [],
              ),
              GallerySection(
                name: r'mediumExtendedItalic',
                children: [],
              ),
              GallerySection(
                name: r'super$',
                children: [],
              ),
            ],
          ),
        ],
      ),
      GallerySection(
        name: r'icons',
        tokens: [
          IconGalleryToken(
            name: r'propagation',
            value: theme.icons.propagation,
          ),
          IconGalleryToken(
            name: r'productMenuClosed',
            value: theme.icons.productMenuClosed,
          ),
          IconGalleryToken(
            name: r'pasteWord',
            value: theme.icons.pasteWord,
          ),
          IconGalleryToken(
            name: r'paperclip',
            value: theme.icons.paperclip,
          ),
          IconGalleryToken(
            name: r'pageTree',
            value: theme.icons.pageTree,
          ),
          IconGalleryToken(
            name: r'phone',
            value: theme.icons.phone,
          ),
        ],
        children: [],
      ),
    ]);
    await tester.pumpWidget(gallery);

    final height = key.currentContext?.size?.height;
    tester.binding.window.physicalSizeTestValue =
        Size(tester.binding.window.physicalSize.width, height ?? 50000);

    await tester.pumpWidget(gallery);

    await expectLater(
      find.byType(Gallery),
      matchesGoldenFile(
        'app_theme.png',
      ),
    );

    debugDisableShadows = true;
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    addTearDown(tester.binding.window.clearDevicePixelRatioTestValue);
  });
}
