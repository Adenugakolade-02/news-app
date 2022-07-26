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

  Body? data;
  
  Future<void> refreshData() async{
     Body new_data =  await RequestItem(url: widget.url).excute();
    setState(() {
      data = new_data;
    });
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: RequestItem(url: widget.url).excute(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          else{
            data = snapshot.data as Body;
            return RefreshIndicator(
            color: const Color(0xFF3E0882),
            child: CardViewBuilder(newsData: data!), onRefresh: refreshData);
          }
          // CardViewBuilder(newsData: snapshot.data as Body);
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
        itemBuilder: (context, index) {
          return NewsCard(
              imageUrl: widget.newsData.articles[index].imageURL,
              topic: widget.newsData.articles[index].title,
              source: widget.newsData.articles[index].source.name,
              newsUrl: widget.newsData.articles[index].newsURL,
              time: '2');
        });
  }
}
