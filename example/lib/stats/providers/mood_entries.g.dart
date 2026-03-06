// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mood_entries.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(moodEntries)
final moodEntriesProvider = MoodEntriesProvider._();

final class MoodEntriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<MoodEntry>>,
          List<MoodEntry>,
          Stream<List<MoodEntry>>
        >
    with $FutureModifier<List<MoodEntry>>, $StreamProvider<List<MoodEntry>> {
  MoodEntriesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'moodEntriesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$moodEntriesHash();

  @$internal
  @override
  $StreamProviderElement<List<MoodEntry>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<MoodEntry>> create(Ref ref) {
    return moodEntries(ref);
  }
}

String _$moodEntriesHash() => r'208326fac88337c2ac1198d34dad56200c07c4c1';
