// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mood_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoodEntryImpl _$$MoodEntryImplFromJson(Map<String, dynamic> json) =>
    _$MoodEntryImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      moodName: json['moodName'] as String,
      remarks: json['remarks'] as String,
    );

Map<String, dynamic> _$$MoodEntryImplToJson(_$MoodEntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'moodName': instance.moodName,
      'remarks': instance.remarks,
    };
