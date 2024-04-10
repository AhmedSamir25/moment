import 'package:flutter/widgets.dart';
import 'package:moment/core/constant/assets_manager.dart';

class PostImage extends StatelessWidget {
  const PostImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Image.asset(
        AssetsManager.postTest,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.25,
        fit: BoxFit.fill,      
      ),
    );
  }
}