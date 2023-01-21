import 'package:flutter/material.dart';
import 'package:mood_meter_picker/mood_meter_picker.dart';
import 'package:mood_meter_picker/src/data/extensions.dart';

class SelectedMoodTile extends StatelessWidget {
  const SelectedMoodTile({
    super.key,
    required this.moodPiece,
    required this.height,
    required this.width,
    this.labelOnTop = true,
    required this.selectedTextStyle,
    required this.unselectedTextStyle,
  });

  final MoodPiece moodPiece;
  final double height;
  final double width;
  final bool labelOnTop;
  final TextStyle selectedTextStyle;
  final TextStyle unselectedTextStyle;

  @override
  Widget build(BuildContext context) {
    final leftMood = moodPiece.left;
    final rightMood = moodPiece.right;
    final upOrDownMood = labelOnTop ? moodPiece.down : moodPiece.up;
    return CustomMultiChildLayout(
      delegate: _MoodTileLayoutDelegate(
        fallbackAnchor: leftMood == null
            ? _FallbackAnchor.left
            : rightMood == null
                ? _FallbackAnchor.right
                : null,
      ),
      children: [
        LayoutId(
          id: _Slot.main,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white60,
              ),
              color: moodPiece.color,
            ),
            child: SizedBox(
              height: height,
              width: width,
            ),
          ),
        ),
        LayoutId(
          id: labelOnTop ? _Slot.top : _Slot.bottom,
          child: Text(
            moodPiece.moodName,
            style: selectedTextStyle,
          ),
        ),
        if (leftMood != null)
          LayoutId(
            id: _Slot.left,
            child: Text(
              leftMood.moodName,
              style: unselectedTextStyle,
            ),
          ),
        if (rightMood != null)
          LayoutId(
            id: _Slot.right,
            child: Text(
              rightMood.moodName,
              style: unselectedTextStyle,
            ),
          ),
        if (!(moodPiece.energy == EnergyLevel.high1 ||
            moodPiece.energy == EnergyLevel.low1))
          if (upOrDownMood != null)
            LayoutId(
              id: labelOnTop ? _Slot.bottom : _Slot.top,
              child: Text(
                upOrDownMood.moodName,
                style: unselectedTextStyle,
              ),
            ),
      ],
    );
  }
}

enum _FallbackAnchor {
  /// Anchors the child, usually the [_Slot.top] or [_Slot.bottom] to the left
  /// side of [_Slot.main] child, if the top/bottom child is significantly
  /// larger than main child.
  left,

  /// Anchors the child, usually the [_Slot.top] or [_Slot.bottom] to the right
  /// side of [_Slot.main] child, if the top/bottom child is significantly
  /// larger than main child.
  right,
}

class _MoodTileLayoutDelegate extends MultiChildLayoutDelegate {
  _MoodTileLayoutDelegate({
    this.fallbackAnchor,
  });

  static const _extraPadding = 4.0;

  final _FallbackAnchor? fallbackAnchor;

  // Perform layout will be called when re-layout is needed.
  @override
  void performLayout(Size size) {
    final fallbackAnchor = this.fallbackAnchor;
    final centerOffset = size.center(Offset.zero);

    var mainSize = Size.zero;
    if (hasChild(_Slot.main)) {
      mainSize = layoutChild(_Slot.main, BoxConstraints.loose(size));
      positionChild(
        _Slot.main,
        centerOffset - mainSize.center(Offset.zero),
      );
    }
    final halfMainHeight = mainSize.height / 2;
    final halfMainWidth = mainSize.width / 2;
    final maxAcceptableWidthWithoutOffset = 0.7 * mainSize.width;

    if (hasChild(_Slot.top)) {
      final topSize = layoutChild(_Slot.top, BoxConstraints.loose(size));
      if (fallbackAnchor != null &&
          topSize.width > maxAcceptableWidthWithoutOffset) {
        var offset = size.center(Offset.zero);
        switch (fallbackAnchor) {
          case _FallbackAnchor.left:
            offset -= topSize.bottomLeft(Offset.zero);
            offset -= Offset(
              0.8 * halfMainWidth,
              halfMainHeight,
            );
            offset += const Offset(_extraPadding, -_extraPadding);
            break;
          case _FallbackAnchor.right:
            offset -= topSize.bottomRight(Offset.zero);
            offset += Offset(
              0.8 * halfMainWidth,
              -halfMainHeight,
            );
            offset -= const Offset(_extraPadding, _extraPadding);
            break;
        }
        positionChild(
          _Slot.top,
          offset,
        );
      } else {
        positionChild(
          _Slot.top,
          centerOffset -
              topSize.bottomCenter(Offset.zero) -
              Offset(0, halfMainHeight) -
              const Offset(0, _extraPadding),
        );
      }
    }

    if (hasChild(_Slot.bottom)) {
      final bottomSize = layoutChild(_Slot.bottom, BoxConstraints.loose(size));
      if (fallbackAnchor != null &&
          bottomSize.width > maxAcceptableWidthWithoutOffset) {
        var offset = size.center(Offset.zero);
        switch (fallbackAnchor) {
          case _FallbackAnchor.left:
            offset += Offset(
              -(0.8 * halfMainWidth),
              halfMainHeight,
            );
            offset += const Offset(_extraPadding, _extraPadding);
            break;
          case _FallbackAnchor.right:
            offset -= bottomSize.topRight(Offset.zero);
            offset += Offset(
              0.8 * halfMainWidth,
              halfMainHeight,
            );
            offset += const Offset(-_extraPadding, _extraPadding);
            break;
        }
        positionChild(
          _Slot.bottom,
          offset,
        );
      } else {
        positionChild(
          _Slot.bottom,
          centerOffset -
              bottomSize.topCenter(Offset.zero) +
              Offset(0, halfMainHeight) +
              const Offset(0, _extraPadding),
        );
      }
    }

    if (hasChild(_Slot.left)) {
      final leftSize = layoutChild(_Slot.left, BoxConstraints.loose(size));
      positionChild(
        _Slot.left,
        centerOffset -
            leftSize.centerRight(Offset.zero) +
            Offset(-halfMainWidth, 0) +
            const Offset(-_extraPadding, 0),
      );
    }

    if (hasChild(_Slot.right)) {
      final rightSize = layoutChild(_Slot.right, BoxConstraints.loose(size));
      positionChild(
        _Slot.right,
        centerOffset -
            rightSize.centerLeft(Offset.zero) +
            Offset(halfMainWidth, 0) +
            const Offset(_extraPadding, 0),
      );
    }
  }

  // shouldRelayout is called to see if the delegate has changed and requires a
  // layout to occur. Should only return true if the delegate state itself
  // changes: changes in the CustomMultiChildLayout attributes will
  // automatically cause a relayout, like any other widget.
  @override
  bool shouldRelayout(_MoodTileLayoutDelegate oldDelegate) {
    return fallbackAnchor != oldDelegate.fallbackAnchor;
  }
}

enum _Slot {
  main,
  top,
  right,
  left,
  bottom,
}
