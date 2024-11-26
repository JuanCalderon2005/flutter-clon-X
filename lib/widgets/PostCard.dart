import 'package:flutter/material.dart';

class TweetCard extends StatelessWidget {
  final String userImageUrl;
  final String username;
  final String userHandle;
  final String tweetText;
  final String tweetTime;
  final int replies;
  final int retweets;
  final int likes;
  final double tweetImageHeight;
  final String tweetImageUrl;

  const TweetCard({
    Key? key,
    required this.userImageUrl,
    required this.username,
    required this.userHandle,
    required this.tweetText,
    required this.tweetTime,
    required this.replies,
    required this.retweets,
    required this.likes,
    this.tweetImageUrl = '',
    this.tweetImageHeight = 250,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.1),
          bottom: BorderSide(color: Colors.grey, width: 0.1),
        ),
      ),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(userImageUrl),
                    radius: 15,
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text(
                            username,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        const SizedBox(width: 2),
                        Icon(
                          Icons.check_circle_rounded,
                          color: Colors.blue,
                          size: 18,
                        ),
                        const SizedBox(width: 2),
                        Text(
                          '@$userHandle',
                          style: TextStyle(color: Colors.grey, fontSize: 11),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          tweetTime,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                          ),
                        ),
                        const SizedBox(width: 50),
                        Icon(
                          Icons.keyboard_control_sharp,
                          color: Colors.grey,
                          size: 18,
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      tweetText,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    const SizedBox(height: 10),
                    if (tweetImageUrl.isNotEmpty)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          tweetImageUrl,
                          width: double.infinity,
                          height: tweetImageHeight,
                          fit: BoxFit.cover,
                        ),
                      ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildActionIcon(
                            Icons.messenger_outline_sharp, replies),
                        _buildActionIcon(Icons.repeat, retweets),
                        _buildActionIcon(Icons.favorite_border, likes),
                        _buildActionIcon(Icons.bar_chart_sharp, 2900000,
                            displayAsText: '2.9M'),
                        Icon(Icons.share, color: Colors.grey, size: 18),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionIcon(IconData icon, int count, {String? displayAsText}) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey, size: 18),
        const SizedBox(width: 5),
        Text(
          displayAsText ?? '$count',
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
