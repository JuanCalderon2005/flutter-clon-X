class Post {
  final String userImageUrl;
  final String username;
  final String userHandle;
  final String tweetText;
  final String tweetTime;
  final int replies;
  final int retweets;
  final int likes;
  final String tweetImageUrl;

  Post({
    required this.userImageUrl,
    required this.username,
    required this.userHandle,
    required this.tweetText,
    required this.tweetTime,
    required this.replies,
    required this.retweets,
    required this.likes,
    required this.tweetImageUrl,
  });
}
