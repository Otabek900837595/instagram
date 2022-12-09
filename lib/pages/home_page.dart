import 'package:flutter/material.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:instagramtasks/pages/feed_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0 ;
  final _pages = [
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.camera_alt_outlined,color: Colors.grey,),
        ),
        title: Text("Instagram",style: TextStyle(color: Colors.grey,),),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.live_tv,color: Colors.grey,),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Linecons.paper_plane,color: Colors.grey,),

          )
          
        ],
      ),
      body: _pages[currentindex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            currentindex = index;
          });
        },
        currentIndex: currentindex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "upload",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Likes",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Likes",
          ),
        ],
      ),
    );
  }
}
