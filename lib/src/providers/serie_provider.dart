import 'package:api/src/models/serie_models.dart';
import 'package:dio/dio.dart';

class SerieProvider{
  final _url = 'https://rickandmortyapi.com/api/episode/10,28';
  final _http = Dio();

  Future<List<SerieModel>> obtenerSerie()async{

    final response =await _http.get(_url);
    List<dynamic> data = response.data;
    return data.map((serie) => SerieModel.transformarInstancia(serie)).toList();
  }
}