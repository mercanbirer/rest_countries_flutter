import 'dart:convert';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_countries_flutter/src/data/models/country.dart';
import 'package:rest_countries_flutter/src/presentation/bloc/country/country_bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Country> listCountry = [];

  @override
  void initState() {
    super.initState();
    context.read<CountryBloc>().add(const CountryFetched());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<CountryBloc, CountryState>(
        builder: (context, state) {
          if (state is CountryLoading) {
            return const CircularProgressIndicator();
          } else if (state is CountrySuccess) {
            listCountry.addAll(state.country);
            return SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      itemCount: listCountry.length,
                      itemBuilder: (context, index) {
                        final value = listCountry[index];
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: ListTile(
                            leading: Image.network(value.flags!.png!),
                            title: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(value.subregion!,
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 16.0),
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                            trailing: const Icon(Icons.keyboard_arrow_right),
                            onTap: () {
                              //auto_router
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          } else if (state is CountryFail) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          } else if (state is CountryFail) {
            return const Text('Initial');
          }
          return Container();
        },
      ),
    );
  }
}
