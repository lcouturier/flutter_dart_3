import 'package:flutter/material.dart';
import 'package:flutter_dart_3/dimension.dart';

extension PaddingExtensions on Widget {
  Widget withPadding([EdgeInsetsGeometry padding = const EdgeInsets.all(Dimens.standardPadding)]) => Padding(
        padding: padding,
        child: this,
      );
  Widget withPaddingOnly({double left = 0.0, double right = 0.0, double top = 0.0, double bottom = 0.0}) => Padding(
        padding: EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
        child: this,
      );
  Widget withPaddingSymetric({double horizontal = 0.0, double vertical = 0.0}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );
}
