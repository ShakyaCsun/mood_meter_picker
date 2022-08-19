// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mood_meter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoodMeterState {
  MoodQuadrant get selectedMoodQuadrant => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MoodQuadrant selectedMoodQuadrant, MoodPiece? initialMoodPiece)
        initial,
    required TResult Function(
            MoodPiece selectedMoodPiece, MoodQuadrant selectedMoodQuadrant)
        complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            MoodQuadrant selectedMoodQuadrant, MoodPiece? initialMoodPiece)?
        initial,
    TResult Function(
            MoodPiece selectedMoodPiece, MoodQuadrant selectedMoodQuadrant)?
        complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MoodQuadrant selectedMoodQuadrant, MoodPiece? initialMoodPiece)?
        initial,
    TResult Function(
            MoodPiece selectedMoodPiece, MoodQuadrant selectedMoodQuadrant)?
        complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoodMeterInitialState value) initial,
    required TResult Function(MoodMeterCompleteState value) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoodMeterInitialState value)? initial,
    TResult Function(MoodMeterCompleteState value)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoodMeterInitialState value)? initial,
    TResult Function(MoodMeterCompleteState value)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoodMeterStateCopyWith<MoodMeterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoodMeterStateCopyWith<$Res> {
  factory $MoodMeterStateCopyWith(
          MoodMeterState value, $Res Function(MoodMeterState) then) =
      _$MoodMeterStateCopyWithImpl<$Res>;
  $Res call({MoodQuadrant selectedMoodQuadrant});
}

/// @nodoc
class _$MoodMeterStateCopyWithImpl<$Res>
    implements $MoodMeterStateCopyWith<$Res> {
  _$MoodMeterStateCopyWithImpl(this._value, this._then);

  final MoodMeterState _value;
  // ignore: unused_field
  final $Res Function(MoodMeterState) _then;

  @override
  $Res call({
    Object? selectedMoodQuadrant = freezed,
  }) {
    return _then(_value.copyWith(
      selectedMoodQuadrant: selectedMoodQuadrant == freezed
          ? _value.selectedMoodQuadrant
          : selectedMoodQuadrant // ignore: cast_nullable_to_non_nullable
              as MoodQuadrant,
    ));
  }
}

/// @nodoc
abstract class _$$MoodMeterInitialStateCopyWith<$Res>
    implements $MoodMeterStateCopyWith<$Res> {
  factory _$$MoodMeterInitialStateCopyWith(_$MoodMeterInitialState value,
          $Res Function(_$MoodMeterInitialState) then) =
      __$$MoodMeterInitialStateCopyWithImpl<$Res>;
  @override
  $Res call({MoodQuadrant selectedMoodQuadrant, MoodPiece? initialMoodPiece});
}

/// @nodoc
class __$$MoodMeterInitialStateCopyWithImpl<$Res>
    extends _$MoodMeterStateCopyWithImpl<$Res>
    implements _$$MoodMeterInitialStateCopyWith<$Res> {
  __$$MoodMeterInitialStateCopyWithImpl(_$MoodMeterInitialState _value,
      $Res Function(_$MoodMeterInitialState) _then)
      : super(_value, (v) => _then(v as _$MoodMeterInitialState));

  @override
  _$MoodMeterInitialState get _value => super._value as _$MoodMeterInitialState;

  @override
  $Res call({
    Object? selectedMoodQuadrant = freezed,
    Object? initialMoodPiece = freezed,
  }) {
    return _then(_$MoodMeterInitialState(
      selectedMoodQuadrant: selectedMoodQuadrant == freezed
          ? _value.selectedMoodQuadrant
          : selectedMoodQuadrant // ignore: cast_nullable_to_non_nullable
              as MoodQuadrant,
      initialMoodPiece: initialMoodPiece == freezed
          ? _value.initialMoodPiece
          : initialMoodPiece // ignore: cast_nullable_to_non_nullable
              as MoodPiece?,
    ));
  }
}

/// @nodoc

class _$MoodMeterInitialState implements MoodMeterInitialState {
  const _$MoodMeterInitialState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoodMeterInitialState &&
            const DeepCollectionEquality()
                .equals(other.selectedMoodQuadrant, selectedMoodQuadrant) &&
            const DeepCollectionEquality()
                .equals(other.initialMoodPiece, initialMoodPiece));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedMoodQuadrant),
      const DeepCollectionEquality().hash(initialMoodPiece));

  @JsonKey(ignore: true)
  @override
  _$$MoodMeterInitialStateCopyWith<_$MoodMeterInitialState> get copyWith =>
      __$$MoodMeterInitialStateCopyWithImpl<_$MoodMeterInitialState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MoodQuadrant selectedMoodQuadrant, MoodPiece? initialMoodPiece)
        initial,
    required TResult Function(
            MoodPiece selectedMoodPiece, MoodQuadrant selectedMoodQuadrant)
        complete,
  }) {
    return initial(selectedMoodQuadrant, initialMoodPiece);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            MoodQuadrant selectedMoodQuadrant, MoodPiece? initialMoodPiece)?
        initial,
    TResult Function(
            MoodPiece selectedMoodPiece, MoodQuadrant selectedMoodQuadrant)?
        complete,
  }) {
    return initial?.call(selectedMoodQuadrant, initialMoodPiece);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MoodQuadrant selectedMoodQuadrant, MoodPiece? initialMoodPiece)?
        initial,
    TResult Function(
            MoodPiece selectedMoodPiece, MoodQuadrant selectedMoodQuadrant)?
        complete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(selectedMoodQuadrant, initialMoodPiece);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoodMeterInitialState value) initial,
    required TResult Function(MoodMeterCompleteState value) complete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoodMeterInitialState value)? initial,
    TResult Function(MoodMeterCompleteState value)? complete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoodMeterInitialState value)? initial,
    TResult Function(MoodMeterCompleteState value)? complete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MoodMeterInitialState implements MoodMeterState {
  const factory MoodMeterInitialState(
      {required final MoodQuadrant selectedMoodQuadrant,
      final MoodPiece? initialMoodPiece}) = _$MoodMeterInitialState;

  @override
  MoodQuadrant get selectedMoodQuadrant;
  MoodPiece? get initialMoodPiece;
  @override
  @JsonKey(ignore: true)
  _$$MoodMeterInitialStateCopyWith<_$MoodMeterInitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoodMeterCompleteStateCopyWith<$Res>
    implements $MoodMeterStateCopyWith<$Res> {
  factory _$$MoodMeterCompleteStateCopyWith(_$MoodMeterCompleteState value,
          $Res Function(_$MoodMeterCompleteState) then) =
      __$$MoodMeterCompleteStateCopyWithImpl<$Res>;
  @override
  $Res call({MoodPiece selectedMoodPiece, MoodQuadrant selectedMoodQuadrant});
}

/// @nodoc
class __$$MoodMeterCompleteStateCopyWithImpl<$Res>
    extends _$MoodMeterStateCopyWithImpl<$Res>
    implements _$$MoodMeterCompleteStateCopyWith<$Res> {
  __$$MoodMeterCompleteStateCopyWithImpl(_$MoodMeterCompleteState _value,
      $Res Function(_$MoodMeterCompleteState) _then)
      : super(_value, (v) => _then(v as _$MoodMeterCompleteState));

  @override
  _$MoodMeterCompleteState get _value =>
      super._value as _$MoodMeterCompleteState;

  @override
  $Res call({
    Object? selectedMoodPiece = freezed,
    Object? selectedMoodQuadrant = freezed,
  }) {
    return _then(_$MoodMeterCompleteState(
      selectedMoodPiece: selectedMoodPiece == freezed
          ? _value.selectedMoodPiece
          : selectedMoodPiece // ignore: cast_nullable_to_non_nullable
              as MoodPiece,
      selectedMoodQuadrant: selectedMoodQuadrant == freezed
          ? _value.selectedMoodQuadrant
          : selectedMoodQuadrant // ignore: cast_nullable_to_non_nullable
              as MoodQuadrant,
    ));
  }
}

/// @nodoc

class _$MoodMeterCompleteState implements MoodMeterCompleteState {
  const _$MoodMeterCompleteState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoodMeterCompleteState &&
            const DeepCollectionEquality()
                .equals(other.selectedMoodPiece, selectedMoodPiece) &&
            const DeepCollectionEquality()
                .equals(other.selectedMoodQuadrant, selectedMoodQuadrant));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedMoodPiece),
      const DeepCollectionEquality().hash(selectedMoodQuadrant));

  @JsonKey(ignore: true)
  @override
  _$$MoodMeterCompleteStateCopyWith<_$MoodMeterCompleteState> get copyWith =>
      __$$MoodMeterCompleteStateCopyWithImpl<_$MoodMeterCompleteState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MoodQuadrant selectedMoodQuadrant, MoodPiece? initialMoodPiece)
        initial,
    required TResult Function(
            MoodPiece selectedMoodPiece, MoodQuadrant selectedMoodQuadrant)
        complete,
  }) {
    return complete(selectedMoodPiece, selectedMoodQuadrant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            MoodQuadrant selectedMoodQuadrant, MoodPiece? initialMoodPiece)?
        initial,
    TResult Function(
            MoodPiece selectedMoodPiece, MoodQuadrant selectedMoodQuadrant)?
        complete,
  }) {
    return complete?.call(selectedMoodPiece, selectedMoodQuadrant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MoodQuadrant selectedMoodQuadrant, MoodPiece? initialMoodPiece)?
        initial,
    TResult Function(
            MoodPiece selectedMoodPiece, MoodQuadrant selectedMoodQuadrant)?
        complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(selectedMoodPiece, selectedMoodQuadrant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoodMeterInitialState value) initial,
    required TResult Function(MoodMeterCompleteState value) complete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoodMeterInitialState value)? initial,
    TResult Function(MoodMeterCompleteState value)? complete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoodMeterInitialState value)? initial,
    TResult Function(MoodMeterCompleteState value)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class MoodMeterCompleteState implements MoodMeterState {
  const factory MoodMeterCompleteState(
          {required final MoodPiece selectedMoodPiece,
          required final MoodQuadrant selectedMoodQuadrant}) =
      _$MoodMeterCompleteState;

  MoodPiece get selectedMoodPiece;
  @override
  MoodQuadrant get selectedMoodQuadrant;
  @override
  @JsonKey(ignore: true)
  _$$MoodMeterCompleteStateCopyWith<_$MoodMeterCompleteState> get copyWith =>
      throw _privateConstructorUsedError;
}
