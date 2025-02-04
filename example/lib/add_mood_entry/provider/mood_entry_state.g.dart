// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mood_entry_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$moodQuadrantHash() => r'568f6f99e5909493abb7faa786e9581a947594e8';

/// See also [moodQuadrant].
@ProviderFor(moodQuadrant)
final moodQuadrantProvider = AutoDisposeProvider<MoodQuadrant>.internal(
  moodQuadrant,
  name: r'moodQuadrantProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$moodQuadrantHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MoodQuadrantRef = AutoDisposeProviderRef<MoodQuadrant>;
String _$selectedMoodPieceHash() => r'1d15e6cddb67e85755aa5c52ee0dd81f744c1866';

/// See also [SelectedMoodPiece].
@ProviderFor(SelectedMoodPiece)
final selectedMoodPieceProvider =
    AutoDisposeNotifierProvider<SelectedMoodPiece, MoodPiece?>.internal(
  SelectedMoodPiece.new,
  name: r'selectedMoodPieceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedMoodPieceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedMoodPiece = AutoDisposeNotifier<MoodPiece?>;
String _$newMoodEntryHash() => r'c415c7cd195355e99b4a4f6d91972075d691f54c';

/// See also [NewMoodEntry].
@ProviderFor(NewMoodEntry)
final newMoodEntryProvider =
    AutoDisposeNotifierProvider<NewMoodEntry, MoodEntryState>.internal(
  NewMoodEntry.new,
  name: r'newMoodEntryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$newMoodEntryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NewMoodEntry = AutoDisposeNotifier<MoodEntryState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
