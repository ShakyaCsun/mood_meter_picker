import 'package:mood_picker_example/moods_repository/models/models.dart';
import 'package:mood_picker_example/moods_repository/moods_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mood_entries.g.dart';

@riverpod
Stream<List<MoodEntry>> moodEntries(MoodEntriesRef ref) {
  final repository = ref.watch(moodsRepositoryProvider);
  return repository.getMoodEntries();
}
