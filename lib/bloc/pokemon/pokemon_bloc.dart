import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_tcg/bloc/pokemon/pokemon_event.dart';
import 'package:pokemon_tcg/bloc/pokemon/pokemon_state.dart';
import 'package:pokemon_tcg/repository/pokemon_repository.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonRepository pokemonRepository;

  PokemonBloc({this.pokemonRepository}) : super(PokemonStateUninitialized());

  @override
  Stream<PokemonState> mapEventToState(PokemonEvent event) async* {
    try {
      final pokemons = await this.pokemonRepository.fetchPokemons();
      yield PokemonStateReady(pokemons);
    } catch (e) {
      print(e);
    }
  }
}
