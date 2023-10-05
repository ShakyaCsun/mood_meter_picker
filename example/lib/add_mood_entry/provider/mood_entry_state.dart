import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mood_meter_picker/mood_meter_picker.dart';
import 'package:mood_picker_example/moods_repository/models/models.dart';
import 'package:mood_picker_example/moods_repository/moods_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mood_entry_state.freezed.dart';
part 'mood_entry_state.g.dart';

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

@freezed
sealed class MoodEntryState with _$MoodEntryState {
  const factory MoodEntryState.initial() = MoodEntryInitial;
  const factory MoodEntryState.inProgress() = MoodEntryInProgress;
  const factory MoodEntryState.success() = MoodEntrySuccess;
  const factory MoodEntryState.failure({
    required String message,
  }) = MoodEntryFailure;
}

extension MoodEntryStateExtension on MoodEntryState {
  bool get isSaving {
    if (this case MoodEntryInProgress()) return true;
    return false;
  }
}

@riverpod
class NewMoodEntry extends _$NewMoodEntry {
  @override
  MoodEntryState build() {
    return const MoodEntryState.initial();
  }

  Future<void> save(MoodPiece moodPiece, String remarks) async {
    final repository = ref.read(moodsRepositoryProvider);
    state = const MoodEntryState.inProgress();
    try {
      await repository.saveMoodEntry(
        MoodEntry.fromMoodPiece(moodPiece: moodPiece, remarks: remarks),
      );
      state = const MoodEntryState.success();
    } on Exception catch (e) {
      state = MoodEntryState.failure(
        message: kDebugMode ? e.toString() : 'Failed to save Mood Entry',
      );
    }
  }
}
