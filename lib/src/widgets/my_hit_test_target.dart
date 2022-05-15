import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mood_meter_picker/mood_meter_picker.dart';

// Ref: https://stackoverflow.com/questions/50639652/how-to-swipe-drag-2-or-more-buttons-in-a-grid-of-buttons-using-flutter
class MyHitTestTarget extends SingleChildRenderObjectWidget {
  const MyHitTestTarget({
    super.key,
    required this.moodPiece,
    super.child,
  });

  final MoodPiece moodPiece;

  @override
  MyHitTestTargetObject createRenderObject(BuildContext context) {
    return MyHitTestTargetObject(moodPiece);
  }

  @override
  void updateRenderObject(
    BuildContext context,
    MyHitTestTargetObject renderObject,
  ) {
    renderObject.moodPiece = moodPiece;
  }
}

class MyHitTestTargetObject extends RenderProxyBox {
  MyHitTestTargetObject(this.moodPiece);

  MoodPiece moodPiece;
}
