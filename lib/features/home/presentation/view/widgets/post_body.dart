import 'package:flutter/material.dart';
import 'package:moment/features/home/presentation/view/widgets/header_post.dart';
import 'package:moment/features/home/presentation/view/widgets/post_image.dart';

class PostBody extends StatelessWidget {
  const PostBody({super.key});

  @override
  Widget build(BuildContext context) {
    double heightMedia = MediaQuery.of(context).size.height;
    return  Container(
      margin: const EdgeInsets.only(left: 8,right: 8),
      color: const Color.fromARGB(255, 231, 225, 225),
      child:  Column(children: [
        SizedBox(height: heightMedia * 0.01,),
        const HeaderPost(),
        SizedBox(height: heightMedia * 0.013,),
        const PostImage(),
      ],
      ),

    );
  }
}