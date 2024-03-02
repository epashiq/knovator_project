// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResumeModelImpl _$$ResumeModelImplFromJson(Map<String, dynamic> json) =>
    _$ResumeModelImpl(
      content: (json['content'] as List<dynamic>)
          .map((e) => ResumeContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ResumeModelImplToJson(_$ResumeModelImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'name': instance.name,
    };
