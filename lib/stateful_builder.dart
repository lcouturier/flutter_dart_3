import 'package:flutter/material.dart';

/// A stateful widget that allows you to rebuild its child with a new value.
///
/// The [StatefulBuilder] widget takes a value of type [T] and a builder function that returns a widget. The builder function is called with the current value and a callback to update the value. When the value is updated, the widget rebuilds with the new value.
///
/// example usage:
/// ```dart
/// StatefulBuilder<int>(
///   value: 0,
///   builder: (context, value, onChanged) {
///     return Column(
///       children: [
///         Text('Value: $value'),
///         ElevatedButton(
///           onPressed: () => onChanged(value + 1),
///           child: Text('Increment'),
///         ),
///       ],
///     );
///   },
///   onChanged: (newValue) {
///     print('Value changed to $newValue');
///   },
/// );
class StatefulBuilder<T> extends StatefulWidget {
  const StatefulBuilder({super.key, required this.value, required this.builder, this.onChanged});
  const StatefulBuilder.withoutOnChange({super.key, required this.value, required this.builder}) : onChanged = null;

  final T value;
  final Widget Function(BuildContext context, T value, void Function(T) onChanged) builder;
  final void Function(T value)? onChanged;

  @override
  State<StatefulBuilder<T>> createState() => _StatefulBuilderState<T>();
}

class _StatefulBuilderState<T> extends State<StatefulBuilder<T>> {
  late T _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  void didUpdateWidget(covariant StatefulBuilder<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      _value = widget.value;
    }
  }

  void _updateValue(T newValue) {
    if (_value == newValue) return;
    setState(() {
      _value = newValue;
    });

    widget.onChanged?.call(newValue);
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _value, _updateValue);
  }
}
