part of 'name.dart';

Name _$NameFromJson(Map<String, dynamic> json) => Name(
  json['common'] as String?,
  json['official'] as String?,
);

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
  'common': instance.common,
  'official': instance.official,
};