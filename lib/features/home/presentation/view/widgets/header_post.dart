import 'package:flutter/material.dart';
import 'package:moment/core/constant/assets_manager.dart';
import 'package:moment/core/theme/text_style.dart';

class HeaderPost extends StatelessWidget {
  const HeaderPost({super.key});

  @override
  Widget build(BuildContext context) {
    return         Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(AssetsManager.userImageTest),
              radius: 27,
            ),
            const SizedBox(
              width: 7,
            ),
            Text('Ahmed Samir',style: StyleText.textStyle18,)
          ],
        );
  }
}