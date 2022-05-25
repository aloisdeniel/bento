import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:bento/src/project/builder.dart';
import 'package:bento/src/project/loader.dart';

Future<void> main(List<String> args) async {
  var runner =
      CommandRunner<void>("bento", "A new way of defining Fluter widgets.")
        ..addCommand(BuildCommand());

  await runner.run(args);
}

class BuildCommand extends Command<void> {
  @override
  String get name => "build";

  @override
  String get description => "Build the bento project as a Dart package.";

  BuildCommand() {
    argParser.addOption('output', abbr: 'o', defaultsTo: './');
  }

  @override
  Future<void> run() async {
    final argResults = this.argResults!;

    final output = argResults['output'];
    final input = argResults.rest.isEmpty ? './' : argResults.rest.last;

    print('Loading project...');
    const loader = BentoProjectLoader();
    final project = await loader.load(Directory(input));

    print('Building project...');
    const builder = BentoProjectDartBuilder();
    await builder.build(project, Directory(output));

    print('Formatting project...');
    await Process.run(
      'dart',
      [
        'format',
        'lib',
      ],
    );
  }
}
