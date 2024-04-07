import 'package:flutter/material.dart';
import 'package:moment/core/theme/text_style.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.onPressed});
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.amber)),
       child: SizedBox(
        height: 60,
        child: Center(child: Text('Sign Up',style: StyleText.textStyle24,))),
      );
  }
}