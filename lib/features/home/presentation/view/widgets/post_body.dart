import 'package:flutter/material.dart';
import 'package:moment/core/constant/assets_manager.dart';
import 'package:moment/core/theme/text_style.dart';
import 'package:moment/features/home/presentation/view/widgets/header_post.dart';

class PostBody extends StatelessWidget {
  const PostBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(left: 8,right: 8),
      color: const Color.fromARGB(255, 231, 225, 225),
      child: const Column(children: [
        HeaderPost(),
      ],
      ),

    );
  }
}