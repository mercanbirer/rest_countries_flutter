import 'package:rest_countries_flutter/src/core/network/api_client.dart';
import 'package:rest_countries_flutter/src/data/models/country.dart';
import 'package:rest_countries_flutter/src/domain/repository/country_repository.dart';

class CountryRepositoryImpl implements CountryRepository {
  CountryRepositoryImpl({required this.apiClient});

  final ApiClient apiClient;

  @override
  Future<List<Country>> countryList() {
    return apiClient.countriesList();
  }
}
