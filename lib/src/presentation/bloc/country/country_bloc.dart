import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_countries_flutter/src/data/models/country.dart';
import 'package:rest_countries_flutter/src/domain/usecase/country_usecase.dart';

part 'country_event.dart';

part 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  final CountryUseCase useCase;

  CountryBloc(this.useCase) : super(CountryInitial()) {
    on<CountryEvent>((event, emit) async {
      emit(CountryLoading());

      final result = await useCase.countryList();

      emit(CountrySuccess(result));
    });
  }
}
