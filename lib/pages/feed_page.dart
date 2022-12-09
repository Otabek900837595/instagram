import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/linecons_icons.dart';

import '../models/post_model.dart';
import '../models/story_model.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final List<Story> _stories = [
    Story(
        name: "Jasmin",
        image: "assets/images/user_2.jpeg"
    ),
    Story(
        name: "Jasmin",
        image: "assets/images/user_2.jpeg"
    ),

    Story(
      name: "Kira Queen",
      image: "assets/images/user_3.jpeg"
    ),
    Story(
        name: "Nancy a",
        image: "assets/images/user_1.jpeg"
    ),
    Story(
        name: "Nancy a",
        image: "assets/images/user_1.jpeg"
    ),
    Story(
        name: "Nancy a",
        image: "assets/images/user_1.jpeg"
    ),
    Story(
        name: "Nancy a",
        image: "assets/images/user_1.jpeg"
    ),
    Story(
        name: "Nancy a",
        image: "assets/images/user_1.jpeg"
    ),
    Story(
        name: "Nancy a",
        image: "assets/images/user_1.jpeg"
    ),

  ];

  final List<Post> _posts = [
    Post(
      userName: "Romy Indy",
      userImage: "assets/images/user_1.jpeg",
      postImage: "assets/images/feed_1.jpeg",
      caption: "Waiting for connection"
    ),
    Post(
      userName: "Romy Ferry",
      userImage: "assets/images/user_2.jpeg",
      postImage: "assets/images/feed_2.jpeg",
      caption: "Waiting for connection"
    ),
    Post(
      userName: "Nej",
      userImage: "assets/images/user_3.jpeg",
      postImage: "assets/images/feed_3.jpeg",
      caption: "Waiting for connection"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),


          //  #Stories
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Stories",style: TextStyle(color: Colors.grey),),
                  Text("Watch All",style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              height: 120,
              child: ListView(

                scrollDirection: Axis.horizontal,
                children: _stories.map((story)  {
                  return _itemOfStory(story);
                }).toList(),
              ),
            ),

          //  #post
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  return _itemOfPost(_posts[index]);
                },
              ),
            ),

          ],
        ),
      ),
    );
  }


  Widget _itemOfStory(Story story){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.purple,
              width: 3,
            )
          ),
          child: Container(
            padding: EdgeInsets.all(7),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image(
                image: AssetImage(story.image!),
                fit: BoxFit.cover,
                height: 70,
                width: 70,
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Text(story.name!,style: TextStyle(color: Colors.grey)),
      ],
    );
  }


  Widget _itemOfPost(Post post){
    return Column(
      children: [
        //avatar
        Container(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
               children: [
                 ClipRRect(
                   borderRadius: BorderRadius.circular(40),
                   child: Image(
                     image: AssetImage(post.userImage!),
                     fit: BoxFit.cover,
                     height: 40,
                     width: 40,
                   ),
                 ),
                 SizedBox(width: 10,),
                 Text(post.userName!,style: TextStyle(color: Colors.grey)),
               ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz,color: Colors.grey,),
              ),
            ],
          ),
        ),
      //  #postimage
        FadeInImage(
          width: MediaQuery.of(context).size.width,
          placeholder: AssetImage("assets/images/placeholder.png"),
          image: AssetImage(post.postImage!),
        ),
      //  buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Linecons.heart,color: Colors.grey,),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Linecons.comment,color: Colors.grey,),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Linecons.paper_plane,color: Colors.grey,),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.bookmark,color: Colors.grey),
            ),
          ],
        ),

      //  #tags
        Container(
          padding: EdgeInsets.symmetric(horizontal: 14),
          width: double.infinity,
          child: RichText(
            text:   TextSpan(
              children: [
                TextSpan(
                  text: "Liked by ",
                  style: TextStyle(color: Colors.grey)
                ),
                TextSpan(
                  text: "Sigmund ",
                  style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "Yesseina ",
                  style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "Dayana ",
                  style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text: "end ",
                    style: TextStyle(color: Colors.grey)
                ),
                TextSpan(
                  text: "1263 others ",
                  style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                ),

              ]
            ),
          ),
        ),
      //  #camp
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 14,vertical: 5),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: post.userName,
                  style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: post.caption,
                  style: TextStyle(color: Colors.grey,),
                )
              ]
            ),
          ),
        ),
      //  #postdate
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 5),
          alignment: Alignment.centerLeft,
          child: const Text("Decembre 8 2022",style: TextStyle(color: Colors.grey)),
        )
      ],
    );
  }
}
