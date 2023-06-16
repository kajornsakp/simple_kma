import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class Pokemon {
  final String name;
  final String url;

  Pokemon(this.name, this.url);

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return _$PokemonFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PokemonToJson(this);
}
//var pokemon = Pokemon(this.name, this.url);
//var pokemon = Pokemon.fromJson(this.name, this.url);

@JsonSerializable()
class PokemonResponse {
  List<Pokemon> results;

  PokemonResponse(this.results);

  factory PokemonResponse.fromJson(Map<String, dynamic> json) {
    return _$PokemonResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PokemonResponseToJson(this);
}