import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_tcg/api/pokemon_api.dart';
import 'package:pokemon_tcg/bloc/pokemon/pokemon_event.dart';
import 'package:pokemon_tcg/bloc/pokemon/pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final Api api;

  PokemonBloc({this.api}) : super(PokemonStateUninitialized());

  @override
  Stream<PokemonState> mapEventToState(PokemonEvent event) async* {
    final response = await api.getPokemon();

    yield PokemonStateReady(response);
  }
}
