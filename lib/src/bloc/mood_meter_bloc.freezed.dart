// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mood_meter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MoodMeterState {
  MoodQuadrant get selectedMoodQuadrant => throw _privateConstructorUsedError;

  /// Create a copy of MoodMeterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoodMeterStateCopyWith<MoodMeterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoodMeterStateCopyWith<$Res> {
  factory $MoodMeterStateCopyWith(
          MoodMeterState value, $Res Function(MoodMeterState) then) =
      _$MoodMeterStateCopyWithImpl<$Res, MoodMeterState>;
  @useResult
  $Res call({MoodQuadrant selectedMoodQuadrant});
}

/// @nodoc
class _$MoodMeterStateCopyWithImpl<$Res, $Val extends MoodMeterState>
    implements $MoodMeterStateCopyWith<$Res> {
  _$MoodMeterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoodMeterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedMoodQuadrant = null,
  }) {
    return _then(_value.copyWith(
      selectedMoodQuadrant: null == selectedMoodQuadrant
          ? _value.selectedMoodQuadrant
          : selectedMoodQuadrant // ignore: cast_nullable_to_non_nullable
              as MoodQuadrant,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoodMeterInitialStateImplCopyWith<$Res>
    implements $MoodMeterStateCopyWith<$Res> {
  factory _$$MoodMeterInitialStateImplCopyWith(
          _$MoodMeterInitialStateImpl value,
          $Res Function(_$MoodMeterInitialStateImpl) then) =
      __$$MoodMeterInitialStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MoodQuadrant selectedMoodQuadrant, MoodPiece? initialMoodPiece});
}

/// @nodoc
class __$$MoodMeterInitialStateImplCopyWithImpl<$Res>
    extends _$MoodMeterStateCopyWithImpl<$Res, _$MoodMeterInitialStateImpl>
    implements _$$MoodMeterInitialStateImplCopyWith<$Res> {
  __$$MoodMeterInitialStateImplCopyWithImpl(_$MoodMeterInitialStateImpl _value,
      $Res Function(_$MoodMeterInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoodMeterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedMoodQuadrant = null,
    Object? initialMoodPiece = freezed,
  }) {
    return _then(_$MoodMeterInitialStateImpl(
      selectedMoodQuadrant: null == selectedMoodQuadrant
          ? _value.selectedMoodQuadrant
          : selectedMoodQuadrant // ignore: cast_nullable_to_non_nullable
              as MoodQuadrant,
      initialMoodPiece: freezed == initialMoodPiece
          ? _value.initialMoodPiece
          : initialMoodPiece // ignore: cast_nullable_to_non_nullable
              as MoodPiece?,
    ));
  }
}

/// @nodoc

class _$MoodMeterInitialStateImpl implements MoodMeterInitialState {
  const _$MoodMeterInitialStateImpl(
      {required this.selectedMoodQuadrant, this.initialMoodPiece});

  @override
  final MoodQuadrant selectedMoodQuadrant;
  @override
  final MoodPiece? initialMoodPiece;

  @override
  String toString() {
    return 'MoodMeterState.initial(selectedMoodQuadrant: $selectedMoodQuadrant, initialMoodPiece: $initialMoodPiece)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoodMeterInitialStateImpl &&
            (identical(other.selectedMoodQuadrant, selectedMoodQuadrant) ||
                other.selectedMoodQuadrant == selectedMoodQuadrant) &&
            (identical(other.initialMoodPiece, initialMoodPiece) ||
                other.initialMoodPiece == initialMoodPiece));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedMoodQuadrant, initialMoodPiece);

  /// Create a copy of MoodMeterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoodMeterInitialStateImplCopyWith<_$MoodMeterInitialStateImpl>
      get copyWith => __$$MoodMeterInitialStateImplCopyWithImpl<
          _$MoodMeterInitialStateImpl>(this, _$identity);
}

abstract class MoodMeterInitialState implements MoodMeterState {
  const factory MoodMeterInitialState(
      {required final MoodQuadrant selectedMoodQuadrant,
      final MoodPiece? initialMoodPiece}) = _$MoodMeterInitialStateImpl;

  @override
  MoodQuadrant get selectedMoodQuadrant;
  MoodPiece? get initialMoodPiece;

  /// Create a copy of MoodMeterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoodMeterInitialStateImplCopyWith<_$MoodMeterInitialStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoodMeterCompleteStateImplCopyWith<$Res>
    implements $MoodMeterStateCopyWith<$Res> {
  factory _$$MoodMeterCompleteStateImplCopyWith(
          _$MoodMeterCompleteStateImpl value,
          $Res Function(_$MoodMeterCompleteStateImpl) then) =
      __$$MoodMeterCompleteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MoodPiece selectedMoodPiece, MoodQuadrant selectedMoodQuadrant});
}

/// @nodoc
class __$$MoodMeterCompleteStateImplCopyWithImpl<$Res>
    extends _$MoodMeterStateCopyWithImpl<$Res, _$MoodMeterCompleteStateImpl>
    implements _$$MoodMeterCompleteStateImplCopyWith<$Res> {
  __$$MoodMeterCompleteStateImplCopyWithImpl(
      _$MoodMeterCompleteStateImpl _value,
      $Res Function(_$MoodMeterCompleteStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoodMeterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedMoodPiece = null,
    Object? selectedMoodQuadrant = null,
  }) {
    return _then(_$MoodMeterCompleteStateImpl(
      selectedMoodPiece: null == selectedMoodPiece
          ? _value.selectedMoodPiece
          : selectedMoodPiece // ignore: cast_nullable_to_non_nullable
              as MoodPiece,
      selectedMoodQuadrant: null == selectedMoodQuadrant
          ? _value.selectedMoodQuadrant
          : selectedMoodQuadrant // ignore: cast_nullable_to_non_nullable
              as MoodQuadrant,
    ));
  }
}

/// @nodoc

class _$MoodMeterCompleteStateImpl implements MoodMeterCompleteState {
  const _$MoodMeterCompleteStateImpl(
      {required this.selectedMoodPiece, required this.selectedMoodQuadrant});

  @override
  final MoodPiece selectedMoodPiece;
  @override
  final MoodQuadrant selectedMoodQuadrant;

  @override
  String toString() {
    return 'MoodMeterState.complete(selectedMoodPiece: $selectedMoodPiece, selectedMoodQuadrant: $selectedMoodQuadrant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoodMeterCompleteStateImpl &&
            (identical(other.selectedMoodPiece, selectedMoodPiece) ||
                other.selectedMoodPiece == selectedMoodPiece) &&
            (identical(other.selectedMoodQuadrant, selectedMoodQuadrant) ||
                other.selectedMoodQuadrant == selectedMoodQuadrant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedMoodPiece, selectedMoodQuadrant);

  /// Create a copy of MoodMeterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoodMeterCompleteStateImplCopyWith<_$MoodMeterCompleteStateImpl>
      get copyWith => __$$MoodMeterCompleteStateImplCopyWithImpl<
          _$MoodMeterCompleteStateImpl>(this, _$identity);
}

abstract class MoodMeterCompleteState implements MoodMeterState {
  const factory MoodMeterCompleteState(
          {required final MoodPiece selectedMoodPiece,
          required final MoodQuadrant selectedMoodQuadrant}) =
      _$MoodMeterCompleteStateImpl;

  MoodPiece get selectedMoodPiece;
  @override
  MoodQuadrant get selectedMoodQuadrant;

  /// Create a copy of MoodMeterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoodMeterCompleteStateImplCopyWith<_$MoodMeterCompleteStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
