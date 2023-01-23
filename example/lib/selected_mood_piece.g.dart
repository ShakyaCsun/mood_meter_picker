// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_mood_piece.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$SelectedMoodPieceHash() => r'1d15e6cddb67e85755aa5c52ee0dd81f744c1866';

/// See also [SelectedMoodPiece].
final selectedMoodPieceProvider =
    AutoDisposeNotifierProvider<SelectedMoodPiece, MoodPiece?>(
  SelectedMoodPiece.new,
  name: r'selectedMoodPieceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$SelectedMoodPieceHash,
);
typedef SelectedMoodPieceRef = AutoDisposeNotifierProviderRef<MoodPiece?>;

abstract class _$SelectedMoodPiece extends AutoDisposeNotifier<MoodPiece?> {
  @override
  MoodPiece? build();
}

String _$moodQuadrantHash() => r'f34fbadeb6f364a555a4517a6f5d275afb60c0ec';

/// See also [moodQuadrant].
final moodQuadrantProvider = AutoDisposeProvider<MoodQuadrant>(
  moodQuadrant,
  name: r'moodQuadrantProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$moodQuadrantHash,
);
typedef MoodQuadrantRef = AutoDisposeProviderRef<MoodQuadrant>;
