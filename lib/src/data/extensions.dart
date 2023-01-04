import 'package:mood_meter_picker/mood_meter_picker.dart';

extension MoodPieceExtensions on MoodPiece {
  bool get isLeftMost => pleasantness == PleasantnessLevel.low5;

  bool get isRightMost => pleasantness == PleasantnessLevel.high5;

  bool get isBottomMost => energy == EnergyLevel.low5;

  bool get isTopMost => energy == EnergyLevel.high5;

  MoodPiece? get left {
    if (!isLeftMost) {
      return MoodPiece.fromLevels(
        energyLevel: energy,
        pleasantnessLevel: pleasantness.previous!,
      );
    }
    return null;
  }

  MoodPiece? get right {
    if (!isRightMost) {
      return MoodPiece.fromLevels(
        energyLevel: energy,
        pleasantnessLevel: pleasantness.next!,
      );
    }
    return null;
  }

  MoodPiece? get up {
    if (!isTopMost) {
      return MoodPiece.fromLevels(
        energyLevel: energy.next!,
        pleasantnessLevel: pleasantness,
      );
    }
    return null;
  }

  MoodPiece? get down {
    if (!isBottomMost) {
      return MoodPiece.fromLevels(
        energyLevel: energy.previous!,
        pleasantnessLevel: pleasantness,
      );
    }
    return null;
  }
}
