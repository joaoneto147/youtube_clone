import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:youtube_clone/model/Video.dart';

const CHAVE_YOUTUBE_API = "AIzaSyDkyFd4aphrddKdqgn8iljrOmqBmEC0-9I";
const ID_CANAL = "UCd-vLa_qcKve3CsDFlYiygA";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  Future <List<Video>> pesquisar(String pesquisa) async{
    http.Response response = await http.get(
      URL_BASE + "search"
        "?part=snippet"
        "&type=video"
        "&maxResults=20"
        "&order=date"
        "&channelId=$ID_CANAL"
        "&key=$CHAVE_YOUTUBE_API"
        "&q=$pesquisa"
    );

    if (response.statusCode == 200){      
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<Video> videos = dadosJson["items"].map<Video>(
        (map){ 
          return Video.fromJson(map);         
        }
      ).toList();

      return videos;

    }else{

    }
  }
}