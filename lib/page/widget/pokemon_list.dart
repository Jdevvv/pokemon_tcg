import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_tcg/api/pokemon_api.dart';
import 'package:pokemon_tcg/bloc/pokemon/pokemon_bloc.dart';
import 'package:pokemon_tcg/bloc/pokemon/pokemon_state.dart';
import 'package:pokemon_tcg/model/pokemon_model.dart';

class PokemonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Api api;
    return Column(
      children: [
        BlocBuilder<PokemonBloc, PokemonState>(
          builder: (context, state) {
            List<PokemonModel> pokemons;
            if (state is PokemonStateReady) {
              pokemons = api.getPokemon() as List<PokemonModel>;
            }

            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Text(pokemons[index].name);
              },
            );
          },
        )
      ],
    );
  }
}
