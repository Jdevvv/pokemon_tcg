import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_tcg/bloc/pokemon/pokemon_bloc.dart';
import 'package:pokemon_tcg/page/home_page.dart';

import 'api/pokemon_api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => PokemonBloc(api: Api()),
        child: HomePage(),
      ),
    );
  }
}
