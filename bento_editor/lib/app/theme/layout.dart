import 'package:flutter/widgets.dart';

import 'editor/layout.dart';
import 'preview/layout.dart';

class ThemeLayout extends StatelessWidget {
  const ThemeLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        Expanded(
          flex: 1,
          child: EditorLayout(),
        ),
        Expanded(
          flex: 1,
          child: PreviewLayout(),
        ),
      ],
    );
  }
}
