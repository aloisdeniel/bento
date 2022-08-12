import 'package:bento_editor/app/project/layout.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: ProjectLayout(),
    );
  }
}
