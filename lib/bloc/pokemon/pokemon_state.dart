import 'package:pokemon_tcg/model/pokemon_model.dart';

class PokemonState {}

class PokemonStateUninitialized extends PokemonState {}

class PokemonStateReady extends PokemonState {
  final List<PokemonModel> pokemons;

  PokemonStateReady(this.pokemons);
}
