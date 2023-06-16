// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemon _$PokemonFromJson(Map<String, dynamic> json) => Pokemon(
      json['name'] as String,
      json['url'] as String,
    );

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

PokemonResponse _$PokemonResponseFromJson(Map<String, dynamic> json) =>
    PokemonResponse(
      (json['results'] as List<dynamic>)
          .map((e) => Pokemon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonResponseToJson(PokemonResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
