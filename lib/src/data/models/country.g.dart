part of 'country.dart';

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      subregion: json['subregion'] as String?,
      flags: json['flags'] == null
          ? null
          : Flags.fromJson(json['flags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'name': instance.name,
      'subregion': instance.subregion,
      'flags': instance.flags,
    };

Flags _$FlagsFromJson(Map<String, dynamic> json) => Flags(
      json['png'] as String?,
    );

Map<String, dynamic> _$FlagsToJson(Flags instance) => <String, dynamic>{
      'png': instance.png,
    };
