import 'package:dio/dio.dart';
import 'package:rest_countries_flutter/src/data/models/country.dart';
import '../constants/api_constants.dart';

class ApiClient {
  final Dio _dio = Dio();

  Future<List<Country>> countriesList() async {
    try {
      Response response = await _dio.get("${Constants.baseUrl}/all");
      final countries =
          (response.data as List).map((e) => Country.fromJson(e)).toList();
      return countries;
    } catch (e) {
      rethrow;
    }
  }
}
