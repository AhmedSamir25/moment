import 'package:flutter/material.dart';
import 'package:moment/features/auth/presentation/view/widgets/custom_text_feild.dart';

class UserSignUpForm extends StatelessWidget {
  const UserSignUpForm({super.key, required this.nameController, required this.emailController, required this.passwordController});
  final TextEditingController nameController, emailController,passwordController;
  @override
  Widget build(BuildContext context) {
    double heightMedia = MediaQuery.of(context).size.height * 0.03;
    return  Padding(
      padding: const EdgeInsets.only(top: 55),
      child: Column(
      children: [
         CustomTextFeild(
          controller: nameController,
          labelText: 'Name', keyboardType: TextInputType.name),
        SizedBox(height:heightMedia,),
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