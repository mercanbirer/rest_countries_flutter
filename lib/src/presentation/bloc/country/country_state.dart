import 'package:equatable/equatable.dart';
import 'package:rest_countries_flutter/src/data/models/country.dart';

abstract class CountryState extends Equatable {
  const CountryState();

  @override
  List<Object?> get props => [];
}

class CountryInitial extends CountryState {}

class CountryLoading extends CountryState {}

class CountrySuccess extends CountryState {
  final List<Country> country;
  const CountrySuccess(this.country);
}

class CountryFail extends CountryState {
  const CountryFail(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}
