part of 'country.dart';

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      name: json['team'] == null
          ? null
          : Name.fromJson(json['team'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'name': instance.name,
    };
