import 'package:flutter/material.dart';
import 'package:moment/core/theme/text_style.dart';

class AllCommentsButton extends StatelessWidget {
  const AllCommentsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: (){}, child:Align(
          alignment: Alignment.centerLeft,
           child: Text('All comments',style: StyleText.textStyle14.copyWith(
            color: const Color.fromARGB(255, 92, 86, 86)
           ),),
         ));
  }
}