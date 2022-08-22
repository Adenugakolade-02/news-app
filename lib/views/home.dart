import 'package:flutter/material.dart';
import 'package:newsapp/views/widgets/news_card.dart';
import 'package:newsapp/views/widgets/tab_view_widgets.dart';



class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  
  List<Tab> _tabs =[
        const Tab(child: Text("Latest")),
        const Tab(child: Text("Nigeria")),
        const Tab(child: Text("Global")),
        const Tab(child: Text("Sports")),
        const Tab(child: Text("Entertainment"))
      ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length:5,
        child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child:  Text(
              "Headlines",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, fontFamily:"Roboto",color: Colors.black),
              textAlign: TextAlign.center,
              ),
          ),
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicatorColor: const Color(0xFF3E0882),
              isScrollable: true,
              physics: const BouncingScrollPhysics(),
              labelColor: const Color(0xFF3E0882),
              unselectedLabelColor: Colors.black38,
              labelStyle: const TextStyle(fontFamily: "Roboto",fontSize: 16,fontWeight: FontWeight.w500),
              unselectedLabelStyle: const TextStyle(fontFamily: "Roboto",fontSize: 16,fontWeight: FontWeight.w400),
              tabs: _tabs),
        ),
        body: TabBarView(
          children: [
            Center(child:Text('okay')),
            Center(child:Text('okay')),
            Center(child:Text('okay')),
            Center(child:Text('okay')),
            TabViewWidget(url: "https://newsapi.org/v2/everything?q=tesla&from=2022-07-22&sortBy=publishedAt&apiKey=efaf70469f0e409e90fc8596bc427b34")
            // Center(child:Text('okay')),
            // NewsCard(
            //   topic: "The January 6 Secret Service Text Scandal Turns Criminal", 
            //   source: 'Wired', 
            //   time: "22 days ago", 
            //   imageUrl: "https://media.wired.com/photos/62db3603a524e4ef61bb6889/191:100/w_1280,c_limit/January-6-Secret-Service-Security-GettyImages-1230451801.jpg")
          ]),
      ),
    );
  }
}



