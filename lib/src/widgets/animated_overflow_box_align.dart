import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// {@template animated_overflow_box_align}
///
/// Modification of [AnimatedAlign] that works with [OverflowBox].
///
/// Creates a widget that positions its child by an alignment that animates
/// implicitly.
///
/// The [alignment], [curve], and [duration] arguments must not be null.
///
/// {@endtemplate}
class AnimatedOverflowBoxAlign extends ImplicitlyAnimatedWidget {
  /// {@macro animated_overflow_box_align}
  const AnimatedOverflowBoxAlign({
    required super.duration,
    super.key,
    this.alignment = Alignment.center,
    this.child,
    this.minHeight,
    this.maxHeight,
    this.minWidth,
    this.maxWidth,
    super.curve,
    super.onEnd,
  });

  /// How to align the child.
  ///
  /// The x and y values of the [Alignment] control the horizontal and vertical
  /// alignment, respectively. An x value of -1.0 means that the left edge of
  /// the child is aligned with the left edge of the parent whereas an x value
  /// of 1.0 means that the right edge of the child is aligned with the right
  /// edge of the parent. Other values interpolate (and extrapolate) linearly.
  /// For example, a value of 0.0 means that the center of the child is aligned
  /// with the center of the parent.
  ///
  /// See also:
  ///
  ///  * [Alignment], which has more details and some convenience constants for
  ///    common positions.
  ///  * [AlignmentDirectional], which has a horizontal coordinate orientation
  ///    that depends on the [TextDirection].
  final AlignmentGeometry alignment;

  /// The widget below this widget in the tree.
  ///
  /// {@macro flutter.widgets.ProxyWidget.child}
  final Widget? child;

  /// The minimum width constraint to give the child. Set this to null (the
  /// default) to use the constraint from the parent instead.
  final double? minWidth;

  /// The maximum width constraint to give the child. Set this to null (the
  /// default) to use the constraint from the parent instead.
  final double? maxWidth;

  /// The minimum height constraint to give the child. Set this to null (the
  /// default) to use the constraint from the parent instead.
  final double? minHeight;

  /// The maximum height constraint to give the child. Set this to null (the
  /// default) to use the constraint from the parent instead.
  final double? maxHeight;

  @override
  AnimatedWidgetBaseState<AnimatedOverflowBoxAlign> createState() =>
      _AnimatedAlignState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<AlignmentGeometry>('alignment', alignment));
  }
}

class _AnimatedAlignState
    extends AnimatedWidgetBaseState<AnimatedOverflowBoxAlign> {
  AlignmentGeometryTween? _alignment;

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _alignment = visitor(
      _alignment,
      widget.alignment,
      (dynamic value) =>
          AlignmentGeometryTween(begin: value as AlignmentGeometry),
    ) as AlignmentGeometryTween?;
  }

  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      alignment: _alignment!.evaluate(animation)!,
      minHeight: widget.minHeight,
      minWidth: widget.minWidth,
      maxHeight: widget.maxHeight,
      maxWidth: widget.maxWidth,
      child: widget.child,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder description) {
    super.debugFillProperties(description);
    description.add(
      DiagnosticsProperty<AlignmentGeometryTween>(
        'alignment',
        _alignment,
        defaultValue: null,
      ),
    );
  }
}
