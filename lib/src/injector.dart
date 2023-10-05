import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rest_countries_flutter/src/data/repository/country_repository_impl.dart';
import 'package:rest_countries_flutter/src/domain/repository/country_repository.dart';
import 'package:rest_countries_flutter/src/domain/usecase/country_usecase.dart';
import 'package:rest_countries_flutter/src/presentation/bloc/country/country_bloc.dart';
import 'core/network/api_client.dart';

final injector = GetIt.I;

void setup() {
  //dio
  injector.registerLazySingleton(Dio.new);

  //network
  injector.registerLazySingleton(ApiClient.new);

  //repository
  injector.registerLazySingleton<CountryRepository>(
    () => CountryRepositoryImpl(
      apiClient: injector(),
    ),
  );

  //useCase
  injector.registerLazySingleton(() => CountryUseCase(injector()));

  //bloc
  injector.registerFactory(() => CountryBloc(injector()));
}
