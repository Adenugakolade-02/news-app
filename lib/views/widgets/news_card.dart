import 'package:flutter/material.dart';
import 'package:newsapp/views/utils/dimensions.dart';

class NewsCard extends StatelessWidget {
  final String topic;
  final String source;
  final String time;
  final String imageUrl;

  NewsCard(
      {required this.topic,
      required this.source,
      required this.time,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      alignment: Alignment.topRight,
      child: Card(
        elevation: 2,
              child: Container(
          height: getHeight(103),
          width: getWidth(328),
          margin: EdgeInsets.symmetric(horizontal: getWidth(16)),
          padding: EdgeInsets.symmetric(horizontal: getWidth(11), vertical: getHeight(11)),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: getHeight(38),
                      width: getWidth(205),
                      child: Text(topic)),
                  SizedBox(height: getHeight(8)),
                  Row(
                    children: [
                      Text(source),
                      const Text(
                        ' . ',
                        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                      const Text('time')
                    ],
                  )
                ],
              ),
              SizedBox(width: getWidth(31)),
              Container(
                height: getHeight(69),
                width: getWidth(69),
                child: Image.network(imageUrl, fit: BoxFit.fill),
              )
            ],
          ),
        ),
      ),
    );
  }
}
