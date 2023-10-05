import 'package:json_annotation/json_annotation.dart';
import 'package:rest_countries_flutter/src/domain/entities/country_entity.dart';
import 'name.dart';
part 'country.g.dart';

@JsonSerializable()
class Country {
  Name? name;
  String? subregion;
  Flags? flags;

  Country({this.name, this.subregion, this.flags});

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);

  CountryEntity toEntity() {
    return CountryEntity(name: name, subregion: subregion, flags: flags);
  }
}

@JsonSerializable()
class Flags {
  final String? png;

  Flags(this.png);

  factory Flags.fromJson(Map<String, dynamic> name) => _$FlagsFromJson(name);

  Map<String, dynamic> toJson() => _$FlagsToJson(this);

  FlagsEntity toEntity() {
    return FlagsEntity(png: png);
  }
}
