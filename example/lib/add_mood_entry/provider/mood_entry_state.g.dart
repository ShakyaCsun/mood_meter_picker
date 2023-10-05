// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mood_entry_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$moodQuadrantHash() => r'f34fbadeb6f364a555a4517a6f5d275afb60c0ec';

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
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter
