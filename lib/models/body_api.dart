import 'package:newsapp/models/news_api.dart';

class Body{
  final List<NewsAPI> articles;

  Body._({
    required this.articles
  });
  
  factory Body.fromJson(Map<String, dynamic> json){
    List<dynamic> list = json['articles'];
    List<NewsAPI> newsList = list.map((e) => NewsAPI.fromJson(e)).toList();
    return Body._(articles: newsList);
  }

}