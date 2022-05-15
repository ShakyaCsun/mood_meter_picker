import 'package:flutter/cupertino.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:mood_meter_picker/mood_meter_picker.dart';

extension MoodPieceExtensions on MoodPiece {
  Aligned get alignedAnchor {
    final isLeftMost = pleasantness == PleasantnessLevel.low5;
    final isRightMost = pleasantness == PleasantnessLevel.high5;
    final isBottomMost = energy == EnergyLevel.low5;
    final isTopMost = energy == EnergyLevel.high5;

    const addFactor = 0.12;

    if (isLeftMost) {
      if (isTopMost) {
        return const Aligned(
          follower: Alignment.topLeft,
          target: Alignment.topLeft,
          widthFactor: 1 + addFactor,
          heightFactor: 1 + addFactor,
        );
      } else if (isBottomMost) {
        return const Aligned(
          follower: Alignment.bottomLeft,
          target: Alignment.bottomLeft,
          widthFactor: 1 + addFactor,
          heightFactor: 1 + addFactor,
        );
      }
      return const Aligned(
        follower: Alignment.centerLeft,
        target: Alignment.centerLeft,
        widthFactor: 1 + addFactor,
        heightFactor: 1 + addFactor * 2,
      );
    }

    if (isRightMost) {
      if (isTopMost) {
        return const Aligned(
          follower: Alignment.topRight,
          target: Alignment.topRight,
          widthFactor: 1 + addFactor,
          heightFactor: 1 + addFactor,
        );
      } else if (isBottomMost) {
        return const Aligned(
          follower: Alignment.bottomRight,
          target: Alignment.bottomRight,
          widthFactor: 1 + addFactor,
          heightFactor: 1 + addFactor,
        );
      }
      return const Aligned(
        follower: Alignment.centerRight,
        target: Alignment.centerRight,
        widthFactor: 1 + addFactor,
        heightFactor: 1 + addFactor * 2,
      );
    }

    if (isTopMost) {
      return const Aligned(
        follower: Alignment.topCenter,
        target: Alignment.topCenter,
        widthFactor: 1 + addFactor * 2,
        heightFactor: 1 + addFactor,
      );
    } else if (isBottomMost) {
      return const Aligned(
        follower: Alignment.bottomCenter,
        target: Alignment.bottomCenter,
        widthFactor: 1 + addFactor * 2,
        heightFactor: 1 + addFactor,
      );
    }

    return const Aligned(
      follower: Alignment.center,
      target: Alignment.center,
      widthFactor: 1 + addFactor * 2,
      heightFactor: 1 + addFactor * 2,
    );
  }
}
