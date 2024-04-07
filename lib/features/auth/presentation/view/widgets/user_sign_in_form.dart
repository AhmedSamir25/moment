import 'package:flutter/material.dart';
import 'package:moment/features/auth/presentation/view/widgets/custom_text_feild.dart';

class UserSignInForm extends StatelessWidget {
  const UserSignInForm ({super.key, required this.emailController, required this.passwordController});
 final TextEditingController emailController,passwordController;
  @override
  Widget build(BuildContext context) {
     double heightMedia = MediaQuery.of(context).size.height * 0.03;
      return  Padding(
      padding: const EdgeInsets.only(top: 55),
      child: Column(
      children: [
        CustomTextFeild(
          controller: emailController,
          labelText: 'Email', keyboardType: TextInputType.emailAddress),
        SizedBox(height:heightMedia,),
        CustomTextFeild(
          controller: passwordController,
          labelText: 'Password', keyboardType: TextInputType.visiblePassword),  
        SizedBox(height:heightMedia,),
        ],
      ),
    );
  }
}