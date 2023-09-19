import 'package:flutter/material.dart';

class AppIgnorePointer extends StatelessWidget {
  final bool ignoring;
  final double opacity;
  final Widget child;

  const AppIgnorePointer({
    super.key,
    this.ignoring = true,
    required this.child,
    this.opacity = .3,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: ignoring,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 256),
        opacity: ignoring ? opacity : 1,
        child: child,
      ),
    );
  }
}
