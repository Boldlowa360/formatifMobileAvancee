import 'package:blanchette_web_service/dto/artiste.dart';
import 'package:dio/dio.dart';

//Singleton
class SingletonDio {


  static Dio getDio() {
    Dio dio = Dio();
    dio.options.baseUrl = 'https://examen-intra-a23.azurewebsites.net';
    //dio.options.baseUrl = 'http://10.0.2.2:8080';
    return dio;
  }
}

Future<List<Artiste>> Recherche(String terme) async{
  try{
    var response = await SingletonDio.getDio().get("/exam/artiste/recherche/"+terme);
    var listeJson = response.data as List;

    var listeArtiste = listeJson.map((elementJSON) {
      return Artiste.fromJson(elementJSON);
    }).toList();
    return listeArtiste;
  }catch(e){
    rethrow;
  }
}

