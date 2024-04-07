import 'package:flutter/material.dart';
import 'package:moment/features/auth/presentation/view/widgets/custom_text_feild.dart';

class UserSignInForm extends StatelessWidget {
  const UserSignInForm ({super.key});

  @override
  Widget build(BuildContext context) {
     double heightMedia = MediaQuery.of(context).size.height * 0.03;
      return  Padding(
      padding: const EdgeInsets.only(top: 55),
      child: Column(
      children: [
        const CustomTextFeild(labelText: 'Email', keyboardType: TextInputType.emailAddress),
        SizedBox(height:heightMedia,),
        const CustomTextFeild(labelText: 'Password', keyboardType: TextInputType.visiblePassword),  
        SizedBox(height:heightMedia,),
        ],
      ),
    );
  }
}