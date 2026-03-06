// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moods_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(moodsRepository)
final moodsRepositoryProvider = MoodsRepositoryProvider._();

final class MoodsRepositoryProvider
    extends
        $FunctionalProvider<MoodsRepository, MoodsRepository, MoodsRepository>
    with $Provider<MoodsRepository> {
  MoodsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'moodsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$moodsRepositoryHash();

  @$internal
  @override
  $ProviderElement<MoodsRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MoodsRepository create(Ref ref) {
    return moodsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MoodsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MoodsRepository>(value),
    );
  }
}

String _$moodsRepositoryHash() => r'df35a71a58462b5b990cef01186cd2968442355b';
