import 'package:pokemon_tcg/api/pokemon_api.dart';
import 'package:pokemon_tcg/model/pokemon_model.dart';

class PokemonRepository {
  Api api = Api();
  List<PokemonModel> pokemons = [];

  Future<List<PokemonModel>> fetchPokemons() async {
    this.pokemons.addAll(await api.pokemonList());
    return pokemons;
  }
}
