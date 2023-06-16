import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_kma/models/models.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({
    super.key,
  });

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final Dio dio = Dio();
  List<Pokemon> pokemonlist = [];

  @override
  void initState() {
    fetchApi();
    super.initState();
  }

  Future<void> fetchApi() async {
    var response = await dio.get("https://pokeapi.co/api/v2/pokemon");
    var pokemonResponse = PokemonResponse.fromJson(response.data);
    setState(() {
      pokemonlist = pokemonResponse.results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: ListView.builder(
          itemCount: pokemonlist.length,
            itemBuilder: (context, index) {
          return ListTile(
            title: Text("Pokemon ${pokemonlist[index].name}"),
          );
        }),
      ),
    );
  }
}
