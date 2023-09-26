import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'core/network/api_client.dart';

final injector = GetIt.I;

void setup() {
  //dio
  injector.registerLazySingleton(Dio.new);

  //network
  injector.registerLazySingleton(ApiClient.new);
}
