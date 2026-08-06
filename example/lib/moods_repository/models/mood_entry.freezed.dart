// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mood_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoodEntry {
  String get id;
  DateTime get createdAt;
  String get moodName;
  String get remarks;

  /// Serializes this MoodEntry to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MoodEntry &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.moodName, moodName) ||
                other.moodName == moodName) &&
            (identical(other.remarks, remarks) || other.remarks == remarks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, moodName, remarks);

  @override
  String toString() {
    return 'MoodEntry(id: $id, createdAt: $createdAt, moodName: $moodName, remarks: $remarks)';
  }
}

/// @nodoc
@JsonSerializable()
class _MoodEntry extends MoodEntry {
  const _MoodEntry({
    required this.id,
    required this.createdAt,
    required this.moodName,
    required this.remarks,
  }) : super._();
  factory _MoodEntry.fromJson(Map<String, dynamic> json) =>
      _$MoodEntryFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final String moodName;
  @override
  final String remarks;

  @override
  Map<String, dynamic> toJson() {
    return _$MoodEntryToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoodEntry &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.moodName, moodName) ||
                other.moodName == moodName) &&
            (identical(other.remarks, remarks) || other.remarks == remarks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, moodName, remarks);

  @override
  String toString() {
    return 'MoodEntry._new(id: $id, createdAt: $createdAt, moodName: $moodName, remarks: $remarks)';
  }
}
