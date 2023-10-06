import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_countries_flutter/src/injector.dart';
import 'package:rest_countries_flutter/src/presentation/bloc/country/country_bloc.dart';
import 'package:rest_countries_flutter/src/router/auto_router_custom.dart';

Future<void> main() async {
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final autoRouter = AutoRouterCustom();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CountryBloc>(
            create: (BuildContext context) => injector<CountryBloc>(),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: autoRouter.config(),
          title: 'Countries',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
        ));
  }
}
