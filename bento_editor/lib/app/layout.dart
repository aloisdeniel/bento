import 'package:bento_editor/app/project/layout.dart';
import 'package:bento_editor/app/theme.dart';
import 'package:bento_editor/app/theme/layout.dart';
import 'package:flutter/widgets.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      color: theme.color.background2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Expanded(
            flex: 1,
            child: ProjectLayout(),
          ),
          Expanded(
            flex: 3,
            child: ThemeLayout(),
          ),
        ],
      ),
    );
  }
}
