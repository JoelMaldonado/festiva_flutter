import 'package:festiva_flutter/domain/model/artist.dart';
import 'package:json_annotation/json_annotation.dart';

part 'artist_dto.g.dart';

@JsonSerializable()
class ArtistDto {
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'nombre')
  final String? nombre;

  @JsonKey(name: 'tipo')
  final String? tipo;

  @JsonKey(name: 'descrip')
  final String? descrip;

  @JsonKey(name: 'biografia')
  final String? biografia;

  @JsonKey(name: 'tags')
  final String? tags;

  @JsonKey(name: 'url_foto')
  final String? urlFoto;

  @JsonKey(name: 'url_foto2')
  final String? urlFoto2;

  @JsonKey(name: 'redes')
  final List<ArtistSocialRedDto>? socialReds;

  ArtistDto({
    required this.id,
    required this.nombre,
    required this.tipo,
    required this.descrip,
    required this.biografia,
    required this.tags,
    required this.urlFoto,
    required this.urlFoto2,
    required this.socialReds,
  });

  factory ArtistDto.fromJson(Map<String, dynamic> json) =>
      _$ArtistDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistDtoToJson(this);

  Artist toDomain() {
    return Artist(
      id: id ?? 0,
      nombre: nombre ?? '',
      tipo: tipo ?? '',
      descrip: descrip ?? '',
      biografia: biografia ?? '',
      tags: tags ?? '',
      urlFoto: urlFoto ?? '',
      urlFoto2: urlFoto2 ?? '',
      socialReds: socialReds?.map((e) => e.toDomain()).toList() ?? [],
    );
  }
}

@JsonSerializable()
class ArtistSocialRedDto {
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'url')
  final String? url;

  ArtistSocialRedDto({
    required this.id,
    required this.url,
  });

  factory ArtistSocialRedDto.fromJson(Map<String, dynamic> json) =>
      _$ArtistSocialRedDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistSocialRedDtoToJson(this);

  ArtistSocialRed toDomain() {
    return ArtistSocialRed(
      id: id ?? 0,
      url: url ?? '',
    );
  }
}
