import 'package:flutter/material.dart';

@immutable
class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    this.onPressed,
    required this.icon,
    required this.size,
  });

  final VoidCallback? onPressed;
  final Widget icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      color: theme.colorScheme.secondary,
      elevation: 4.0,
      child: SizedBox(
        height: size,
        width: size,
        child: IconButton(
          onPressed: onPressed,
          icon: icon,
          color: theme.colorScheme.secondary,
        ),
      ),
    );
  }
}