import 'package:rest_countries_flutter/src/data/models/country.dart';
import 'package:rest_countries_flutter/src/data/models/name.dart';

class CountryEntity {
  Name? name;
  String? subregion;
  Flags? flags;

  CountryEntity({
    this.name,
    this.subregion,
    this.flags
  });
}

class FlagsEntity {
 String? png;

  FlagsEntity({
    this.png
  });
}
