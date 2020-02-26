class Video{
  String id;
  String titulo;
  String descricao;
  String imagem;
  String canal;

  Video({this.id, this.titulo, this.descricao, this.imagem, this.canal});

  /*static converterJson(Map<String, dynamic> json){
    return Video(
      id: json["id"]["videoId"],      
      imagem: json["snippet"]["thumbnails"]["high"]["url"],
      titulo: json["snippet"]["title"],
      canal: json["snippet"]["channelId"]
    );
  }*/

  factory Video.fromJson(Map<String, dynamic> json){
    return Video(
      id: json["id"]["videoId"],      
      imagem: json["snippet"]["thumbnails"]["high"]["url"],
      titulo: json["snippet"]["title"],
      canal: json["snippet"]["channelTitle"],
      descricao: json["snippet"]["description"]
    );
  }
}