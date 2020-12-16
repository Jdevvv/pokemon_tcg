class PokemonModel {
  String name;

  PokemonModel(this.name);

  PokemonModel.fromJSON(Map<String, dynamic> json) {
    this.name = json['name'];
  }
}
