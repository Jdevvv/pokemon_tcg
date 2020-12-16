import 'package:flutter/material.dart';
import 'package:pokemon_tcg/page/widget/pokemon_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pokemon tcg'),
        ),
        body: Container(
          child: PokemonList(),
        ));
  }
}
