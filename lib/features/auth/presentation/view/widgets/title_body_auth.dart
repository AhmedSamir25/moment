import 'package:flutter/widgets.dart';

class TitleBodyAuth extends StatelessWidget {
  const TitleBodyAuth({super.key, required this.titleText, required this.bodyText});
  final String titleText, bodyText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
          titleText,
          style: const TextStyle(fontSize: 20),
        ),
         Text(
          bodyText,
          style: const TextStyle(fontSize: 20),
        ),
        
      ],
    );
  }
}