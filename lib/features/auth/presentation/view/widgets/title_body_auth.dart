import 'package:flutter/widgets.dart';
import 'package:moment/core/theme/text_style.dart';

class TitleBodyAuth extends StatelessWidget {
  const TitleBodyAuth({super.key, required this.titleText, required this.bodyText});
  final String titleText, bodyText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(right: 25,left: 25, top: 110),
        child: Column(
          children: [
             Text(
              titleText,
              style: StyleText.textStyle24
            ),
             Text(
              bodyText,
              style: StyleText.textStyle18,
            ),
            
          ],
        ),
      ),
    );
  }
}