import 'package:flutter/material.dart';

/// A widget that conditionally wraps its child with another widget based on a boolean condition.
/// <example>
/// ```dart
/// WrapIf(
///   condition: true,
///   builder: (context, child) => Padding(
///     padding: const EdgeInsets.all(8.0),
///     child: child,
///   ),
///   child: Text('Hello, World!'),
/// )
/// ```
class WrapIf extends StatelessWidget {
  final bool condition;
  final Widget Function(BuildContext context, Widget child) builder;
  final Widget child;

  const WrapIf({
    super.key,
    required this.condition,
    required this.builder,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    if (condition) {
      return builder(context, child);
    } else {
      return child;
    }
  }
}
