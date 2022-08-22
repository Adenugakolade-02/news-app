import 'news_api.dart';

class Source{
  final String? id;
  final String name;

  Source._({
    required this.id,
    required this.name
  });

  factory Source.fromJson(Map<String, dynamic> json){
    return Source._(id: json['id'], name: json['name']);
  }
  
  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'name':name
    };
  }
}