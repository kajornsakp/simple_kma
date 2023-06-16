
import 'package:dio/dio.dart';
import 'package:simple_kma/models/models.dart';

class PokemonService {
  final Dio dio = Dio();

  Future<PokemonResponse> fetchApi() async {
    var response = await dio.get("https://pokeapi.co/api/v2/pokemon");
    var pokemonResponse = PokemonResponse.fromJson(response.data);
    return pokemonResponse;
  }
}