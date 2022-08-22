import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/models/body_api.dart';

class RequestItem{
  final String url;

  const RequestItem({required this.url});

  Future<Body> excute() async {
    
    Uri uri = Uri.parse(url);
    final response =  await http.get(uri);

    if (response.statusCode!=200){
      throw http.ClientException("Problem with URL provided");
    }
    return Body.fromJson(jsonDecode(response.body));
  }

}