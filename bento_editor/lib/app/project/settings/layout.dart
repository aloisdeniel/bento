import 'dart:io';

import 'package:bento_editor/app/project/state.dart';
import 'package:bento_editor/app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons/lucide_icons.dart';

import 'side_bar/layout.dart';
import 'widgets/button.dart';

class ProjectSettingsLayout extends StatelessWidget {
  const ProjectSettingsLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      color: Platform.isMacOS ? Colors.transparent : theme.color.background1,
      child: Row(
        children: [
          const ProjectSettingsSideBar(),
          Expanded(
            child: Consumer(
              builder: (context, ref, _) {
                final projectState = ref.watch(projectStatePod);
                return ListView(
                  children: [
                    Section(
                      title: 'Themes',
                      actions: [
                        SmallActionButton(
                          tooltip: 'Create theme folder',
                          onTap: () => context.project.createTheme(),
                          child: const Icon(LucideIcons.folderPlus),
                        ),
                        SmallActionButton(
                          tooltip: 'Create theme',
                          onTap: () => context.project.createTheme(),
                          child: const Icon(LucideIcons.filePlus2),
                        ),
                      ],
                      children: [
                        if (projectState != null)
                          ...projectState.themes
                              .map((theme) => Text(theme.name)),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Section extends StatelessWidget {
  const Section({
    super.key,
    required this.title,
    required this.children,
    required this.actions,
  });

  final String title;
  final List<Widget> children;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Padding(
      padding: EdgeInsets.only(
        top: theme.spacing.semiBig.top,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: theme.spacing.big.left,
              right: theme.spacing.big.right,
              bottom: theme.spacing.medium.bottom,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: theme.typography.title3.copyWith(
                      color: theme.color.appAccent,
                    ),
                  ),
                ),
                ...actions.map(
                  (e) => Padding(
                    padding: EdgeInsets.only(
                      left: theme.spacing.small.left,
                    ),
                    child: e,
                  ),
                ),
              ],
            ),
          ),
          ...children.map(
            (e) => Padding(
              padding: EdgeInsets.only(
                left: theme.spacing.big.left,
                right: theme.spacing.big.right,
              ),
              child: e,
            ),
          ),
        ],
      ),
    );
  }
}
