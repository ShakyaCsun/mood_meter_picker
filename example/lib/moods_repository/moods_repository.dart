import 'dart:convert' show json;
import 'dart:developer' as developer;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mood_picker_example/moods_repository/models/models.dart';
import 'package:mood_picker_example/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'moods_repository.g.dart';

@riverpod
MoodsRepository moodsRepository(Ref ref) {
  final preferences = ref.watch(sharedPreferencesProvider);
  return MoodsRepository(
    moodsApi: LocalStorageMoodsApi(preferences: preferences),
  );
}

abstract class MoodsApi {
  const MoodsApi();

  Stream<List<MoodEntry>> getMoodEntries();

  Future<void> saveMoodEntry(MoodEntry moodEntry);

  Future<void> deleteMoodEntry(String id);
}

/// Error thrown when a [MoodEntry] with a given id is not found.
class MoodEntryNotFoundException implements Exception {}

class LocalStorageMoodsApi extends MoodsApi {
  LocalStorageMoodsApi({
    required SharedPreferences preferences,
  }) : _plugin = preferences {
    _init();
  }

  final SharedPreferences _plugin;

  final _moodsStreamController =
      BehaviorSubject<List<MoodEntry>>.seeded(const []);

  static const _moodEntriesCollectionKey = '__moodEntries_collection_key__';

  @override
  Stream<List<MoodEntry>> getMoodEntries() {
    return _moodsStreamController.asBroadcastStream();
  }

  String? _getValue(String key) => _plugin.getString(key);
  Future<void> _setValue(String key, String value) {
    return _plugin.setString(key, value);
  }

  @override
  Future<void> deleteMoodEntry(String id) {
    final moodEntries = [..._moodsStreamController.value];
    final moodEntryIndex = moodEntries.indexWhere(
      (moodEntry) => moodEntry.id == id,
    );
    if (moodEntryIndex == -1) {
      throw MoodEntryNotFoundException();
    } else {
      moodEntries.removeAt(moodEntryIndex);
      _moodsStreamController.add(moodEntries);
      return _setValue(_moodEntriesCollectionKey, json.encode(moodEntries));
    }
  }

  @override
  Future<void> saveMoodEntry(MoodEntry moodEntry) {
    final moodEntries = [moodEntry, ..._moodsStreamController.value];
    _moodsStreamController.add(moodEntries);
    return _setValue(_moodEntriesCollectionKey, json.encode(moodEntries));
  }

  void _init() {
    final moodsJson = _getValue(_moodEntriesCollectionKey);
    if (moodsJson != null) {
      try {
        final moodEntries = List<dynamic>.from(
          json.decode(moodsJson) as List,
        )
            .map(
              (moodJson) => MoodEntry.fromJson(
                moodJson as Map<String, dynamic>,
              ),
            )
            .toList();
        _moodsStreamController.add(moodEntries);
      } on Exception catch (e, st) {
        developer.log(
          'LocalStorageMoodsApi _init failed',
          error: e,
          stackTrace: st,
        );
      }
    }
  }
}

class MoodsRepository {
  const MoodsRepository({
    required MoodsApi moodsApi,
  }) : _moodsApi = moodsApi;

  final MoodsApi _moodsApi;

  Stream<List<MoodEntry>> getMoodEntries() => _moodsApi.getMoodEntries();

  Future<void> saveMoodEntry(MoodEntry moodEntry) {
    return _moodsApi.saveMoodEntry(moodEntry);
  }

  Future<void> deleteMoodEntry(String id) {
    return _moodsApi.deleteMoodEntry(id);
  }
}
