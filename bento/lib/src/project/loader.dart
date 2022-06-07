import 'dart:io';

import 'package:bento/src/helpers/yaml.dart';
import 'package:bento/src/project/models.dart';
import 'package:bento/src/theme/models.dart';
import 'package:bento/src/theme/parser.dart';
import 'package:bento/src/widgets/models.dart';
import 'package:bento/src/widgets/parser.dart';
import 'package:path/path.dart';
import 'package:yaml/yaml.dart';

class BentoProjectLoader {
  const BentoProjectLoader();
  final themeParser = const BentoThemeParser();
  final widgetParser = const BentoWidgetParser();

  Future<BentoProject> load(Directory directory) async {
    final bento = Directory(join(directory.path, 'bento'));
    if (bento.existsSync()) {
      directory = bento;
    }

    final manifest = File(join(directory.path, 'bento.yaml'));
    if (!manifest.existsSync()) {
      throw Exception('No "bento.yaml" project file in directory.');
    }
    final yaml = await manifest.readAsString();
    var configurationMap = loadYaml(yaml);
    final name = configurationMap['name'];
    if (name is! String) {
      throw Exception('Missing "name" in project file');
    }

    final configuration = BentoProjectConfiguration.fromJson(
        configurationMap is YamlNode
            ? configurationMap.toJson()
            : configurationMap);

    final themes = await _loadThemes(Directory(join(directory.path, 'themes')));

    final widgets =
        await _loadWidgets(Directory(join(directory.path, 'widgets')));

    return BentoProject(
      configuration: configuration,
      themes: themes,
      widgets: widgets,
    );
  }

/*
  // Introduces a compiler bug

  Future<List<BentoItem<T>>> _loadFiles<T>(
    Directory directory,
    T Function(String name, String content) loadFile,
  ) async {
    if (directory.existsSync()) {
      final result = <BentoItem<T>>[];
      final allChildren = await directory.list().toList();
      for (var item in allChildren) {
        if (item is File) {
          if (extension(item.path) == '.json') {
            final name = basenameWithoutExtension(item.path);
            final content = await item.readAsString();
            result.add(
              BentoItem.file(
                name: name,
                content: await loadFile(name, content),
              ),
            );
          }
        } else if (item is Directory) {
          final name = basename(item.path);
          final children = await _loadFiles(item, loadFile);
          result.add(
            BentoItem.directory(
              name: name,
              children: children,
            ),
          );
        }
      }

      return result;
    }

    return const <BentoItem<T>>[];
  }
  */

  Future<List<BentoItem<BentoTheme>>> _loadThemes(
    Directory directory,
  ) async {
    if (directory.existsSync()) {
      final result = <BentoItem<BentoTheme>>[];
      final allChildren = await directory.list().toList();
      for (var item in allChildren) {
        if (item is File) {
          if (extension(item.path) == '.json') {
            final name = basenameWithoutExtension(item.path);
            final content = await item.readAsString();
            result.add(
              BentoItem.file(
                name: name,
                content: await themeParser.parseJson(name, content),
              ),
            );
          }
        } else if (item is Directory) {
          final name = basename(item.path);
          final children = await _loadThemes(item);
          result.add(
            BentoItem.directory(
              name: name,
              children: children,
            ),
          );
        }
      }

      return result;
    }

    return const <BentoItem<BentoTheme>>[];
  }

  Future<List<BentoItem<BentoWidget>>> _loadWidgets(
    Directory directory,
  ) async {
    if (directory.existsSync()) {
      final result = <BentoItem<BentoWidget>>[];
      final allChildren = await directory.list().toList();
      for (var item in allChildren) {
        if (item is File) {
          if (extension(item.path) == '.dart') {
            final name = basenameWithoutExtension(item.path);
            final content = await item.readAsString();
            result.add(
              BentoItem.file(
                name: name,
                content: await widgetParser.parseDart(name, content),
              ),
            );
          }
        } else if (item is Directory) {
          final name = basename(item.path);
          final children = await _loadWidgets(item);
          result.add(
            BentoItem.directory(
              name: name,
              children: children,
            ),
          );
        }
      }

      return result;
    }

    return const <BentoItem<BentoWidget>>[];
  }
}
