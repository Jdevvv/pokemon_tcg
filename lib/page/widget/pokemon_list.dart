import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_tcg/bloc/pokemon/pokemon_bloc.dart';
import 'package:pokemon_tcg/bloc/pokemon/pokemon_state.dart';
import 'package:pokemon_tcg/model/pokemon_model.dart';
import 'dart:developer';

import 'package:pokemon_tcg/repository/pokemon_repository.dart';

class PokemonList extends StatelessWidget {
  PokemonRepository pokeRepo;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonBloc, PokemonState>(
      builder: (context, state) {
        List<PokemonModel> pokemons;
        log('$state');

        if (state is PokemonStateUninitialized) {
          log('$pokeRepo');
          return Text('No data yet');
        } else if (state is PokemonStateReady) {
          pokemons = pokeRepo.fetchPokemons() as List<PokemonModel>;
        }

        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            log('$pokemons');
            return Text(pokemons[index].name);
          },
        );
      },
    );
  }
}
