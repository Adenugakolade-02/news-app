import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  late TabController _tabController;

   @override
    void initState() {
      super.initState();
      _tabController = TabController(length: 6, vsync: this);
      _tabController.animateTo(2);
    }
  
  
  TextStyle _style = const TextStyle(fontFamily: "Roboto",fontSize: 16);
  
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
            Center(child:Text('okay')),
          ]),
      ),
    );
  }
}



// class TabBars extends StatelessWidget with PreferredSizeWidget{

//   final TextStyle _unpickedTextStyle = const TextStyle(fontFamily: "Roboto", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black38);
//   final TextStyle _pickedTextStyle = const TextStyle(fontFamily: "Roboto", fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF3E0882));
//   @override
//   Widget build(BuildContext context){
//     return TabBar(
//       controller: T,
//       tabs: [
//         Tab(child: Text("Latest",style: _unpickedTextStyle,)),
//         Tab(child: Text("Nigeria",style: _unpickedTextStyle,)),
//         Tab(child: Text("Global",style: _unpickedTextStyle,)),
//         Tab(child: Text("Sports",style: _unpickedTextStyle,)),
//         Tab(child: Text("Entertainment",style: _unpickedTextStyle,)),
//       ]
//     );
//   }
  
//   @override
//   Size get preferredSize => Size.fromHeight(kToolbarHeight + kTextTabBarHeight);
// }