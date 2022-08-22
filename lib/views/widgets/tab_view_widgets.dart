import 'package:flutter/material.dart';
import 'package:newsapp/models/body_api.dart';
import 'package:newsapp/models/news_api.dart';
import 'package:newsapp/models/parser.dart';
import 'package:newsapp/views/widgets/news_card.dart';


class TabViewWidget extends StatefulWidget {
  final String url;

  TabViewWidget({required this.url});
  @override
  State<TabViewWidget> createState() => _TabViewWidgetState();
}

class _TabViewWidgetState extends State<TabViewWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: RequestItem(url:widget.url).excute(),
      builder: (context, snapshot){
        if (!snapshot.hasData){
          return const Center(child: CircularProgressIndicator());
        }
        return CardViewBuilder(newsData: snapshot.data as Body);
      });
  }
}

class CardViewBuilder extends StatefulWidget {
  final Body newsData;
  CardViewBuilder({required this.newsData});
  @override
  State<CardViewBuilder> createState() => _CardViewBuilderState();
}

class _CardViewBuilderState extends State<CardViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.newsData.articles.length,
      itemBuilder: (context,index){
        return NewsCard(
          imageUrl: widget.newsData.articles[index].imageURL,
          topic: widget.newsData.articles[index].title,
          source: widget.newsData.articles[index].source.name,
          time:'2'
          );
      });
  }
}