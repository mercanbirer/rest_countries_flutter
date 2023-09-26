import 'package:json_annotation/json_annotation.dart';
import 'package:rest_countries_flutter/src/domain/entities/name_entity.dart';
part 'name.g.dart';

@JsonSerializable()
class Name {
  final String? common;
  final String? official;

  Name(this.common, this.official);

  factory Name.fromJson(Map<String, dynamic> name) => _$NameFromJson(name);

  Map<String, dynamic> toJson() => _$NameToJson(this);

  NameEntity toEntity() {
    return NameEntity(common: common, official: official);
  }
}
