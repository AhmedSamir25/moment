import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moment/core/theme/text_style.dart';

class PostLike extends StatelessWidget {
  const PostLike({super.key, required this.onPressed, required this.countLike});
  final Function() onPressed;
  final int countLike;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        IconButton(onPressed: onPressed,
         icon: const Icon(Icons.heart_broken,size: 30,)),
         SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
         ),
         Text(countLike.toString(),style: StyleText.textStyle16,),
      ],
    );
  }
}