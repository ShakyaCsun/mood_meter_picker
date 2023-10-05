import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mood_meter_picker/mood_meter_picker.dart';
import 'package:uuid/uuid.dart';

part 'mood_entry.freezed.dart';
part 'mood_entry.g.dart';

/// {@template mood_entry}
///
/// {@endtemplate}
@freezed
class MoodEntry with _$MoodEntry {
  const MoodEntry._();

  const factory MoodEntry._new({
    required String id,
    required DateTime createdAt,
    required String moodName,
    required String remarks,
  }) = _MoodEntry;

  /// {@macro mood_entry}
  factory MoodEntry.fromMoodPiece({
    required MoodPiece moodPiece,
    required String remarks,
  }) {
    return MoodEntry._new(
      id: const Uuid().v4(),
      createdAt: DateTime.now(),
      moodName: moodPiece.moodName,
      remarks: remarks,
    );
  }

  /// Deserializes the given [json] into a [MoodEntry]
  factory MoodEntry.fromJson(Map<String, dynamic> json) =>
      _$MoodEntryFromJson(json);

  MoodPiece? get moodPiece {
    return MoodPiece.fromName(moodName);
  }
}
