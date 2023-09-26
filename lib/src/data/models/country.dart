import 'package:json_annotation/json_annotation.dart';
import 'package:rest_countries_flutter/src/domain/entities/country_entity.dart';
import 'name.dart';
part 'country.g.dart';

@JsonSerializable()
class Country {
  Name? name;

  Country({
    this.name,
  });

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);

  CountryEntity toEntity() {
    return CountryEntity(
      name: name,
    );
  }
}
