import 'package:flutter/widgets.dart';
import 'package:moment/core/theme/text_style.dart';

class PostCaptions extends StatelessWidget {
  const PostCaptions({super.key, required this.postCaptions});
  final String postCaptions;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Align(
            alignment: Alignment.centerLeft,
            child: Text(postCaptions,style: StyleText.textStyle16,)),
    );
  }
}