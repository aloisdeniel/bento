import 'package:bento_editor/app/theme.dart';
import 'package:flutter/material.dart';
import 'package:tap_builder/tap_builder.dart';

class SmallActionButton extends StatelessWidget {
  const SmallActionButton({
    super.key,
    this.builder,
    this.child,
    this.onTap,
    this.background,
    this.foreground,
    this.tooltip,
  });

  final VoidCallback? onTap;
  final Widget Function(BuildContext, TapState, bool)? builder;
  final Widget? child;
  final Color? background;
  final Color? foreground;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final background = this.background ?? theme.color.appAccent;
    final foreground = this.foreground ?? theme.color.foreground1;
    final result = TapBuilder(
      onTap: onTap,
      builder: (context, state, isFocused) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: theme.radius.medium,
            color: background,
          ),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: theme.spacing.semiSmall,
            decoration: BoxDecoration(
              borderRadius: theme.radius.medium,
              color: foreground.withOpacity(() {
                switch (state) {
                  case TapState.pressed:
                    return 0.3;
                  case TapState.hover:
                    return 0.1;
                  default:
                    return 0.0;
                }
              }()),
            ),
            child: IconTheme(
              data: IconThemeData(
                color: foreground,
                size: 16,
              ),
              child: DefaultTextStyle(
                style: theme.typography.button.copyWith(
                  color: foreground,
                ),
                child: builder?.call(context, state, isFocused) ??
                    child ??
                    const SizedBox(),
              ),
            ),
          ),
        );
      },
    );
    if (tooltip != null) {
      return Tooltip(
        message: tooltip,
        padding: const EdgeInsets.all(8.0),
        preferBelow: false,
        decoration: BoxDecoration(
          color: theme.color.background1,
          borderRadius: theme.radius.small,
        ),
        textStyle: theme.typography.smallParagraph.copyWith(
          color: theme.color.foreground1,
        ),
        waitDuration: const Duration(seconds: 1),
        child: result,
      );
    }
    return result;
  }
}
