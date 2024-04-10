import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moment/features/home/presentation/view/widgets/all_comments.dart';
import 'package:moment/features/home/presentation/view/widgets/header_post.dart';
import 'package:moment/features/home/presentation/view/widgets/post_captions.dart';
import 'package:moment/features/home/presentation/view/widgets/post_image.dart';
import 'package:moment/features/home/presentation/view/widgets/post_like.dart';

class PostBody extends StatelessWidget {
  const PostBody({super.key});

  @override
  Widget build(BuildContext context) {
    double heightMedia = MediaQuery.of(context).size.height;
    return  Container(
      
      margin: const EdgeInsets.only(left: 8,right: 8 ,bottom: 13),
     decoration: BoxDecoration(
       color: Color.fromARGB(255, 239, 241, 236),
       borderRadius: BorderRadius.circular(6),
     ),
      child:  Column(children: [
        SizedBox(height: heightMedia * 0.01,),
        const HeaderPost(),
        SizedBox(height: heightMedia * 0.013,),
        const PostImage(),
        SizedBox(height: heightMedia * 0.01,),
        PostLike(onPressed: (){},
         countLike: 122),
         const PostCaptions(postCaptions: 'this is a nice view '),
         const AllCommentsButton(),
      ],
      ),

    );
  }
}