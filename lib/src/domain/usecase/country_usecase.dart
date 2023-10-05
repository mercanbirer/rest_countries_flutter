import 'package:rest_countries_flutter/src/data/models/country.dart';
import 'package:rest_countries_flutter/src/domain/repository/country_repository.dart';

class CountryUseCase {
  final CountryRepository _countryRepository;

  CountryUseCase(this._countryRepository);

  Future<List<Country>> countryList() {
    return _countryRepository.countryList();
  }
}
