import 'package:get/get.dart';
import 'package:simple_kma/models/models.dart';
import 'package:simple_kma/service/pokemon_service.dart';

class PokemonRepository extends GetxController {
  final PokemonService _pokemonService = Get.find<PokemonService>();
  List<Pokemon> pokemonList = <Pokemon>[].obs;

  @override
  void onReady() {
    super.onReady();
    getPokemon();
  }

  getPokemon() async {
    var pokemonResponse = await _pokemonService.fetchApi();
    pokemonList = pokemonResponse.results;
  }
}