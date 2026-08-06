// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mood_entry_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoodEntryState implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'MoodEntryState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MoodEntryState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoodEntryState()';
  }
}

/// @nodoc
class $MoodEntryStateCopyWith<$Res> {
  $MoodEntryStateCopyWith(MoodEntryState _, $Res Function(MoodEntryState) __);
}

/// @nodoc

class MoodEntryInitial with DiagnosticableTreeMixin implements MoodEntryState {
  const MoodEntryInitial();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'MoodEntryState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MoodEntryInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoodEntryState.initial()';
  }
}

/// @nodoc

class MoodEntryInProgress
    with DiagnosticableTreeMixin
    implements MoodEntryState {
  const MoodEntryInProgress();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'MoodEntryState.inProgress'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MoodEntryInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoodEntryState.inProgress()';
  }
}

/// @nodoc

class MoodEntrySuccess with DiagnosticableTreeMixin implements MoodEntryState {
  const MoodEntrySuccess();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'MoodEntryState.success'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MoodEntrySuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoodEntryState.success()';
  }
}

/// @nodoc

class MoodEntryFailure with DiagnosticableTreeMixin implements MoodEntryState {
  const MoodEntryFailure({required this.message});

  final String message;

  /// Create a copy of MoodEntryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MoodEntryFailureCopyWith<MoodEntryFailure> get copyWith =>
      _$MoodEntryFailureCopyWithImpl<MoodEntryFailure>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'MoodEntryState.failure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MoodEntryFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoodEntryState.failure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $MoodEntryFailureCopyWith<$Res>
    implements $MoodEntryStateCopyWith<$Res> {
  factory $MoodEntryFailureCopyWith(
    MoodEntryFailure value,
    $Res Function(MoodEntryFailure) _then,
  ) = _$MoodEntryFailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$MoodEntryFailureCopyWithImpl<$Res>
    implements $MoodEntryFailureCopyWith<$Res> {
  _$MoodEntryFailureCopyWithImpl(this._self, this._then);

  final MoodEntryFailure _self;
  final $Res Function(MoodEntryFailure) _then;

  /// Create a copy of MoodEntryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? message = null}) {
    return _then(
      MoodEntryFailure(
        message: null == message
            ? _self.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}
