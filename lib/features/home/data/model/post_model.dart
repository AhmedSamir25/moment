import 'package:cloud_firestore/cloud_firestore.dart';

class PostModel {
  String? postId;
  String? postCaptions;
  String? postImage;
  String? userId;
  String? userImage;
  int?  postLike;
  List? postComments;
  PostModel(
      {required this.postId,
      required this.postCaptions,
      required this.postImage,
      required this.postLike,
      required this.postComments,
      required this.userId,
      required this.userImage,
      });
  factory PostModel.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return PostModel(
      postId: data['postId'],
      postCaptions: data['postCaptions'],
      postImage: data['postImage'],
      postLike: data['postLike'],
      postComments: data['postComments'],
      userId: data['userId'],
      userImage: data['userImage'],
    );
  }
   Map<String, dynamic> toJson() {
    return {
      'postId' : postId,
      'postCaptions' : postCaptions,
      'postImage': postImage,
      'postLike': postLike,
      'postComments':postComments,
      'userId':userId,
      'userImage' : userImage,
    };
  }
}