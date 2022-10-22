// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputModel _$InputModelFromJson(Map<String, dynamic> json) => InputModel(
      title: json['title'] as String? ?? '',
      height: json['height'] as int? ?? 0,
      width: json['width'] as int? ?? 0,
      sort: json['sort'] as int? ?? 0,
      color: json['color'] as String? ?? '',
      type: json['type'] as String? ?? '',
      group: json['group'] as String? ?? '',
    );

Map<String, dynamic> _$InputModelToJson(InputModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'sort': instance.sort,
      'group': instance.group,
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'type': instance.type,
    };
