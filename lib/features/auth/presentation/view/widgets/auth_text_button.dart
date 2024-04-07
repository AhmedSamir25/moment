import 'package:flutter/material.dart';
import 'package:moment/core/theme/text_style.dart';

class AuthSignTextButton extends StatelessWidget {
  const AuthSignTextButton({super.key, required this.onPressed});
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed:onPressed, child: Text('Sign In',
    style: StyleText.TextStyle14,
    ));
  }
}