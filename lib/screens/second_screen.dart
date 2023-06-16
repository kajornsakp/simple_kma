import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_kma/repository/pokemonRepository.dart';

class SecondScreen extends GetView<PokemonRepository> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: ListView.builder(
            itemCount: controller.pokemonList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Pokemon ${controller.pokemonList[index].name}"),
              );
            }),
      ),
    );
  }
}
