import 'package:bento_editor/app/project/settings/widgets/button.dart';
import 'package:bento_editor/app/project/state.dart';
import 'package:bento_editor/app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ProjectSettingsSideBar extends StatelessWidget {
  const ProjectSettingsSideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      color: Colors.black26,
      child: SafeArea(
        left: false,
        right: false,
        child: Padding(
          padding: EdgeInsets.only(
            top: theme.spacing.semiBig.bottom,
            bottom: theme.spacing.semiBig.bottom,
          ),
          child: Column(
            children: [
              SmallActionButton(
                background: Colors.transparent,
                tooltip: 'Close project',
                onTap: () {},
                child: const Icon(LucideIcons.arrowLeft),
              ),
              Gap(theme.spacing.medium.top),
              SmallActionButton(
                background: Colors.transparent,
                tooltip: 'Export project',
                child: const Icon(LucideIcons.share),
                onTap: () {},
              ),
              Gap(theme.spacing.medium.top),
              SmallActionButton(
                background: Colors.transparent,
                tooltip: 'Settings',
                onTap: () {},
                child: const Icon(LucideIcons.sliders),
              ),
              Gap(theme.spacing.medium.top),
              const RotatedBox(
                quarterTurns: -1,
                child: ProjectInfo(),
              ),
              const Spacer(),
              const RotatedBox(
                quarterTurns: -1,
                child: Title(
                  title: 'Bento',
                ),
              ),
            ],
          ),
        ),
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
    return Text(
      title,
      style: theme.typography.title2.copyWith(
        color: theme.color.appAccent,
      ),
    );
  }
}

class ProjectInfo extends ConsumerWidget {
  const ProjectInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name =
        ref.watch(projectStatePod.select((project) => project?.name ?? ""));
    final theme = AppTheme.of(context);
    return Text(
      name,
      style: theme.typography.title3.copyWith(
        color: theme.color.foreground1,
      ),
    );
  }
}
