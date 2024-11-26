import 'package:flutter/material.dart';
import 'package:twitter/widgets/PostCard.dart';
import 'package:twitter/data/posts_data.dart';

class CustomHomePage extends StatefulWidget {
  const CustomHomePage({super.key});

  @override
  State<CustomHomePage> createState() => _CustomHomePageState();
}

class _CustomHomePageState extends State<CustomHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: posts.length, // Usa la lista importada
        itemBuilder: (context, index) {
          return TweetCard(
            userImageUrl: posts[index].userImageUrl,
            username: posts[index].username,
            userHandle: posts[index].userHandle,
            tweetText: posts[index].tweetText,
            tweetTime: posts[index].tweetTime,
            replies: posts[index].replies,
            retweets: posts[index].retweets,
            likes: posts[index].likes,
            tweetImageUrl: posts[index].tweetImageUrl,
          );
        },
      ),
    );
  }
}
