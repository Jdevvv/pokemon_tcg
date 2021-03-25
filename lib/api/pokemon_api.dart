import 'dart:convert';

import 'package:pokemon_tcg/model/pokemon_model.dart';
import 'package:http/http.dart' as http;

const String url = "https://api.pokemontcg.io/v1/cards";

class Api {
  Future<List<PokemonModel>> pokemonList() async {
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return List<PokemonModel>.from(
          data["cards"].map((pokemon) => PokemonModel.fromJSON(pokemon)));
    } else {
      throw Exception('Failed to load pokemon list');
    }
  }
}
