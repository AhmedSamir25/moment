import 'package:flutter/material.dart';
import 'package:moment/core/theme/text_style.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.onPressed, required this.buttonText});
  final Function() onPressed;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 62, 142, 207))),
       child: SizedBox(
        height: 60,
        child: Center(child: Text(buttonText,style: StyleText.textStyle24.copyWith(
          color: Colors.white,
          fontFamily: 'Josefin Sans'
        ),))),
      );
  }
}