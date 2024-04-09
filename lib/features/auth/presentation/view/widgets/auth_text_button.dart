import 'package:flutter/material.dart';
import 'package:moment/core/theme/text_style.dart';

class AuthSignTextButton extends StatelessWidget {
  const AuthSignTextButton({super.key, required this.onPressed, required this.textButton});
  final Function() onPressed;
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed:onPressed, child: Text(textButton,
    style: StyleText.textStyle14,
    ));
  }
}