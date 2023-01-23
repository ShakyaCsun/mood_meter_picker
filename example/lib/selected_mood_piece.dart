import 'package:mood_meter_picker/mood_meter_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_mood_piece.g.dart';

@riverpod
class SelectedMoodPiece extends _$SelectedMoodPiece {
  @override
  MoodPiece? build() {
    return null;
  }

  // ignore: use_setters_to_change_properties
  void moodPieceChanged(MoodPiece moodPiece) {
    state = moodPiece;
  }
}

@riverpod
MoodQuadrant moodQuadrant(MoodQuadrantRef ref) {
  return ref.watch(selectedMoodPieceProvider)?.moodQuadrant ??
      MoodQuadrant.highEnergyPleasant;
}
