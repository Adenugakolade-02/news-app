import 'package:newsapp/models/source_api.dart';

class NewsAPI{
  final Source source;
  final String title;
  final String imageURL;
  final String newsURL;

  NewsAPI._({
    required this.source, required this.title, required this.imageURL, required this.newsURL
  });

  factory NewsAPI.fromJson(Map<String, dynamic> json){
    Source source = Source.fromJson(json['source']);
    return NewsAPI._(source: source, title: json['title'], imageURL: json['imageURL'], newsURL: json['newsURL']);
  }

  Map<String, dynamic> toJson() => {'source':source, 'title': title, 'url':newsURL, 'urlToImage': imageURL};
}