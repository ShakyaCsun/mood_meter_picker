part of 'mood_meter_bloc.dart';

@freezed
sealed class MoodMeterState with _$MoodMeterState {
  const factory MoodMeterState.initial({
    required MoodQuadrant selectedMoodQuadrant,
    MoodPiece? initialMoodPiece,
  }) = MoodMeterInitialState;

  const factory MoodMeterState.complete({
    required MoodPiece selectedMoodPiece,
    required MoodQuadrant selectedMoodQuadrant,
  }) = MoodMeterCompleteState;
}
