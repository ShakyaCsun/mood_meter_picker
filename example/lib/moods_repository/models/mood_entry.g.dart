// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mood_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoodEntry _$MoodEntryFromJson(Map<String, dynamic> json) => _MoodEntry(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  moodName: json['moodName'] as String,
  remarks: json['remarks'] as String,
);

Map<String, dynamic> _$MoodEntryToJson(_MoodEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'moodName': instance.moodName,
      'remarks': instance.remarks,
    };
