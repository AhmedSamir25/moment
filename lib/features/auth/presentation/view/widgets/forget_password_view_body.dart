import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moment/features/auth/presentation/logic/auth_cubit/auth_cubit.dart';
import 'package:moment/features/auth/presentation/logic/auth_cubit/auth_state.dart';
import 'package:moment/features/auth/presentation/view/sign_in_view.dart';
import 'package:moment/features/auth/presentation/view/widgets/custom_elevated_button.dart';
import 'package:moment/features/auth/presentation/view/widgets/custom_text_feild.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
         if (state is SuccessResetPasswordState) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: Colors.red, content: Text('Check your Email',),));
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const SignInView()));
        }else if (state is FeiledResetPasswordState) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.red, content: Text(state.massage)));
         } 
          
      },
      builder: (context, state) {
        return  Padding(
          padding: const EdgeInsets.only(left: 16 , right: 16, top:  200),
          child: Column(
            children: [
              CustomTextFeild(labelText: 'Email',
               keyboardType: TextInputType.emailAddress,
                controller: emailController),
                const SizedBox(height: 30,),
                CustomElevatedButton(onPressed: (){
                  if (emailController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text('Check Email Field Is Empty')));
                     }else{
                      BlocProvider.of<AuthCubit>(context).resetPassword(email: emailController.text);
                     }
                }, buttonText: "Send link")
            ],
          ),
        );
      },
    );
  }
}
