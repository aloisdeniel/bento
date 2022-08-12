import 'package:bento_editor/app/theme.dart';
import 'package:flutter/widgets.dart';

import 'settings/layout.dart';
import 'theme/layout.dart';

class ProjectLayout extends StatelessWidget {
  const ProjectLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final mediaQuery = MediaQuery.of(context);
    return MediaQuery(
      data: mediaQuery.copyWith(
          padding: mediaQuery.padding + const EdgeInsets.only(top: 24)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            flex: 1,
            child: ProjectSettingsLayout(),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: theme.color.background2,
              child: const ThemeLayout(),
            ),
          ),
        ],
      ),
    );
  }
}
