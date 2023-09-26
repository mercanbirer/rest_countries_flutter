import 'package:rest_countries_flutter/src/data/models/country.dart';

abstract class CountryRepository {
  Future<List<Country>> countryList();
}
