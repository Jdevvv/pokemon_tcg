import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_tcg/bloc/pokemon/pokemon_bloc.dart';
import 'package:pokemon_tcg/bloc/pokemon/pokemon_state.dart';
import 'package:pokemon_tcg/page/home_page.dart';
import 'package:pokemon_tcg/repository/pokemon_repository.dart';
import 'package:after_layout/after_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => PokemonBloc(pokemonRepository: PokemonRepository()),
        child: HomePage(),
      ),
    );
  }
}
