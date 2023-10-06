import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_countries_flutter/src/domain/usecase/country_usecase.dart';
import 'package:rest_countries_flutter/src/presentation/bloc/country/country_state.dart';

class CountryBloc extends Cubit<CountryState> {
  CountryBloc(this.useCase) : super(CountryInitial()) {
    getCountryList();
  }

  final CountryUseCase useCase;

  Future<void> getCountryList() async {
    try {
      emit(CountryLoading());
      final countryList = await useCase.countryList();

      emit(CountrySuccess(countryList));
    } catch (e) {
      emit(const CountryFail('Error'));
    }
  }
}
