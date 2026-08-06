// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mood_meter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoodMeterState {
  MoodQuadrant get selectedMoodQuadrant;

  /// Create a copy of MoodMeterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MoodMeterStateCopyWith<MoodMeterState> get copyWith =>
      _$MoodMeterStateCopyWithImpl<MoodMeterState>(
        this as MoodMeterState,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MoodMeterState &&
            (identical(other.selectedMoodQuadrant, selectedMoodQuadrant) ||
                other.selectedMoodQuadrant == selectedMoodQuadrant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedMoodQuadrant);

  @override
  String toString() {
    return 'MoodMeterState(selectedMoodQuadrant: $selectedMoodQuadrant)';
  }
}

/// @nodoc
abstract mixin class $MoodMeterStateCopyWith<$Res> {
  factory $MoodMeterStateCopyWith(
    MoodMeterState value,
    $Res Function(MoodMeterState) _then,
  ) = _$MoodMeterStateCopyWithImpl;
  @useResult
  $Res call({MoodQuadrant selectedMoodQuadrant});
}

/// @nodoc
class _$MoodMeterStateCopyWithImpl<$Res>
    implements $MoodMeterStateCopyWith<$Res> {
  _$MoodMeterStateCopyWithImpl(this._self, this._then);

  final MoodMeterState _self;
  final $Res Function(MoodMeterState) _then;

  /// Create a copy of MoodMeterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedMoodQuadrant = null}) {
    return _then(
      _self.copyWith(
        selectedMoodQuadrant: null == selectedMoodQuadrant
            ? _self.selectedMoodQuadrant
            : selectedMoodQuadrant // ignore: cast_nullable_to_non_nullable
                  as MoodQuadrant,
      ),
    );
  }
}

/// @nodoc

class MoodMeterInitialState implements MoodMeterState {
  const MoodMeterInitialState({
    required this.selectedMoodQuadrant,
    this.initialMoodPiece,
  });

  @override
  final MoodQuadrant selectedMoodQuadrant;
  final MoodPiece? initialMoodPiece;

  /// Create a copy of MoodMeterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MoodMeterInitialStateCopyWith<MoodMeterInitialState> get copyWith =>
      _$MoodMeterInitialStateCopyWithImpl<MoodMeterInitialState>(
        this,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MoodMeterInitialState &&
            (identical(other.selectedMoodQuadrant, selectedMoodQuadrant) ||
                other.selectedMoodQuadrant == selectedMoodQuadrant) &&
            (identical(other.initialMoodPiece, initialMoodPiece) ||
                other.initialMoodPiece == initialMoodPiece));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedMoodQuadrant, initialMoodPiece);

  @override
  String toString() {
    return 'MoodMeterState.initial(selectedMoodQuadrant: $selectedMoodQuadrant, initialMoodPiece: $initialMoodPiece)';
  }
}

/// @nodoc
abstract mixin class $MoodMeterInitialStateCopyWith<$Res>
    implements $MoodMeterStateCopyWith<$Res> {
  factory $MoodMeterInitialStateCopyWith(
    MoodMeterInitialState value,
    $Res Function(MoodMeterInitialState) _then,
  ) = _$MoodMeterInitialStateCopyWithImpl;
  @override
  @useResult
  $Res call({MoodQuadrant selectedMoodQuadrant, MoodPiece? initialMoodPiece});
}

/// @nodoc
class _$MoodMeterInitialStateCopyWithImpl<$Res>
    implements $MoodMeterInitialStateCopyWith<$Res> {
  _$MoodMeterInitialStateCopyWithImpl(this._self, this._then);

  final MoodMeterInitialState _self;
  final $Res Function(MoodMeterInitialState) _then;

  /// Create a copy of MoodMeterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedMoodQuadrant = null,
    Object? initialMoodPiece = freezed,
  }) {
    return _then(
      MoodMeterInitialState(
        selectedMoodQuadrant: null == selectedMoodQuadrant
            ? _self.selectedMoodQuadrant
            : selectedMoodQuadrant // ignore: cast_nullable_to_non_nullable
                  as MoodQuadrant,
        initialMoodPiece: freezed == initialMoodPiece
            ? _self.initialMoodPiece
            : initialMoodPiece // ignore: cast_nullable_to_non_nullable
                  as MoodPiece?,
      ),
    );
  }
}

/// @nodoc

class MoodMeterCompleteState implements MoodMeterState {
  const MoodMeterCompleteState({
    required this.selectedMoodPiece,
    required this.selectedMoodQuadrant,
  });

  final MoodPiece selectedMoodPiece;
  @override
  final MoodQuadrant selectedMoodQuadrant;

  /// Create a copy of MoodMeterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MoodMeterCompleteStateCopyWith<MoodMeterCompleteState> get copyWith =>
      _$MoodMeterCompleteStateCopyWithImpl<MoodMeterCompleteState>(
        this,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MoodMeterCompleteState &&
            (identical(other.selectedMoodPiece, selectedMoodPiece) ||
                other.selectedMoodPiece == selectedMoodPiece) &&
            (identical(other.selectedMoodQuadrant, selectedMoodQuadrant) ||
                other.selectedMoodQuadrant == selectedMoodQuadrant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedMoodPiece, selectedMoodQuadrant);

  @override
  String toString() {
    return 'MoodMeterState.complete(selectedMoodPiece: $selectedMoodPiece, selectedMoodQuadrant: $selectedMoodQuadrant)';
  }
}

/// @nodoc
abstract mixin class $MoodMeterCompleteStateCopyWith<$Res>
    implements $MoodMeterStateCopyWith<$Res> {
  factory $MoodMeterCompleteStateCopyWith(
    MoodMeterCompleteState value,
    $Res Function(MoodMeterCompleteState) _then,
  ) = _$MoodMeterCompleteStateCopyWithImpl;
  @override
  @useResult
  $Res call({MoodPiece selectedMoodPiece, MoodQuadrant selectedMoodQuadrant});
}

/// @nodoc
class _$MoodMeterCompleteStateCopyWithImpl<$Res>
    implements $MoodMeterCompleteStateCopyWith<$Res> {
  _$MoodMeterCompleteStateCopyWithImpl(this._self, this._then);

  final MoodMeterCompleteState _self;
  final $Res Function(MoodMeterCompleteState) _then;

  /// Create a copy of MoodMeterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedMoodPiece = null,
    Object? selectedMoodQuadrant = null,
  }) {
    return _then(
      MoodMeterCompleteState(
        selectedMoodPiece: null == selectedMoodPiece
            ? _self.selectedMoodPiece
            : selectedMoodPiece // ignore: cast_nullable_to_non_nullable
                  as MoodPiece,
        selectedMoodQuadrant: null == selectedMoodQuadrant
            ? _self.selectedMoodQuadrant
            : selectedMoodQuadrant // ignore: cast_nullable_to_non_nullable
                  as MoodQuadrant,
      ),
    );
  }
}
