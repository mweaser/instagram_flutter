import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class Post {
  final String uid;
  final String description;
  final String username;
  final String postId;
  final DateTime datePublished;
  final String postUrl;
  final String profImage;
  final List likes;

  const Post(
      {required this.uid,
      required this.description,
      required this.username,
      required this.postId,
      required this.datePublished,
      required this.postUrl,
      required this.profImage,
      required this.likes});

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "description": description,
        "username": username,
        "postId": postId,
        "datePublished": datePublished,
        "postUrl": postUrl,
        "profImage": profImage,
        "likes": likes
      };

  static Post fromSnap(DocumentSnapshot snapshot) {
    var snap = (snapshot.data() as Map<String, dynamic>);
    return Post(
        uid: snap["uid"],
        description: snap["description"],
        username: snap["username"],
        postId: snap["postId"],
        datePublished: snap["datePublished"],
        postUrl: snap["postUrl"],
        profImage: snap["profImage"],
        likes: snap["likes"]);
  }
}
