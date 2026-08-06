// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mood_entry_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedMoodPiece)
final selectedMoodPieceProvider = SelectedMoodPieceProvider._();

final class SelectedMoodPieceProvider
    extends $NotifierProvider<SelectedMoodPiece, MoodPiece?> {
  SelectedMoodPieceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedMoodPieceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedMoodPieceHash();

  @$internal
  @override
  SelectedMoodPiece create() => SelectedMoodPiece();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MoodPiece? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MoodPiece?>(value),
    );
  }
}

String _$selectedMoodPieceHash() => r'1d15e6cddb67e85755aa5c52ee0dd81f744c1866';

abstract class _$SelectedMoodPiece extends $Notifier<MoodPiece?> {
  MoodPiece? build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<MoodPiece?, MoodPiece?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MoodPiece?, MoodPiece?>,
              MoodPiece?,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(moodQuadrant)
final moodQuadrantProvider = MoodQuadrantProvider._();

final class MoodQuadrantProvider
    extends $FunctionalProvider<MoodQuadrant, MoodQuadrant, MoodQuadrant>
    with $Provider<MoodQuadrant> {
  MoodQuadrantProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'moodQuadrantProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$moodQuadrantHash();

  @$internal
  @override
  $ProviderElement<MoodQuadrant> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MoodQuadrant create(Ref ref) {
    return moodQuadrant(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MoodQuadrant value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MoodQuadrant>(value),
    );
  }
}

String _$moodQuadrantHash() => r'568f6f99e5909493abb7faa786e9581a947594e8';

@ProviderFor(NewMoodEntry)
final newMoodEntryProvider = NewMoodEntryProvider._();

final class NewMoodEntryProvider
    extends $NotifierProvider<NewMoodEntry, MoodEntryState> {
  NewMoodEntryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'newMoodEntryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$newMoodEntryHash();

  @$internal
  @override
  NewMoodEntry create() => NewMoodEntry();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MoodEntryState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MoodEntryState>(value),
    );
  }
}

String _$newMoodEntryHash() => r'c415c7cd195355e99b4a4f6d91972075d691f54c';

abstract class _$NewMoodEntry extends $Notifier<MoodEntryState> {
  MoodEntryState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<MoodEntryState, MoodEntryState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MoodEntryState, MoodEntryState>,
              MoodEntryState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
