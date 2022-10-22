// "dynamic_views": [
// {
// "title": "Just Square",
// "sort": 1,
// "group": "COMMON",
// "width": 200,
// "height": 200,
// "color": "#000000",
// "type": "container"
// }

import 'package:json_annotation/json_annotation.dart';

part 'input_model.g.dart';

@JsonSerializable()
class InputModel {
  @JsonKey(defaultValue: "", name: "title")
  String title;

  @JsonKey(defaultValue: 0, name: "sort")
  int sort;

  @JsonKey(defaultValue: "", name: "group")
  String group;

  @JsonKey(defaultValue: 0, name: "width")
  int width;

  @JsonKey(defaultValue: 0, name: "height")
  int height;

  @JsonKey(defaultValue: "", name: "color")
  String color;

  @JsonKey(defaultValue: "", name: "type")
  String type;

  InputModel({required this.title, required this.height, required this.width, required this.sort, required this.color, required this.type, required this.group});

  factory InputModel.fromJson(Map<String, dynamic> json) => _$InputModelFromJson(json);

  Map<String, dynamic> toJson() => _$InputModelToJson(this);
}
