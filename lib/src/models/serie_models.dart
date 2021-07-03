class SerieModel {
  int id;
  String? name;
  String? airDate;
  String? episode;
  String? characters;
  String? url;

  SerieModel({
   required this.id,
    this.name,
    this.airDate,
    this.episode,
    this.characters,
    this.url,
  });

  factory SerieModel.transformarInstancia(Map<String,dynamic> serie){
    return SerieModel(
      id: serie['id'],
      name: serie['name'],
      airDate: serie['air_date'],
      episode: serie['episode'],
    );
  }
}