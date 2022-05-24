import 'package:bento_editor/app/theme.dart';
import 'package:flutter/widgets.dart';

class ProjectLayout extends StatelessWidget {
  const ProjectLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      color: theme.color.background1,
      child: ListView(
        children: const [
          Title(
            title: 'Bento',
          ),
          Section(
            title: 'Themes',
            children: [],
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Padding(
      padding: EdgeInsets.only(
        top: theme.spacing.extraBig.top,
        left: theme.spacing.extraBig.left,
      ),
      child: Text(
        title,
        style: theme.typography.title2.copyWith(
          color: theme.color.appAccent,
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  const Section({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Padding(
      padding: EdgeInsets.only(
        top: theme.spacing.extraBig.top,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: theme.spacing.extraBig.left,
            ),
            child: Text(
              title,
              style: theme.typography.title3.copyWith(
                color: theme.color.appAccent,
              ),
            ),
          ),
          ...children,
        ],
      ),
    );
  }
}
