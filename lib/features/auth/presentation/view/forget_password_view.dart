import 'package:flutter/material.dart';
import 'package:moment/core/theme/text_style.dart';
import 'package:moment/features/auth/presentation/view/widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Reset Password',style: StyleText.textStyle24,),
      ),
      body: const ForgetPasswordViewBody(),
    );
  }
}