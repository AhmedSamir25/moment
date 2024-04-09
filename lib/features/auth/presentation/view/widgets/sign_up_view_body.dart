import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moment/core/theme/text_style.dart';
import 'package:moment/features/auth/presentation/logic/auth_cubit/auth_cubit.dart';
import 'package:moment/features/auth/presentation/logic/auth_cubit/auth_state.dart';
import 'package:moment/features/auth/presentation/view/sign_in_view.dart';
import 'package:moment/features/auth/presentation/view/widgets/auth_text_button.dart';
import 'package:moment/features/auth/presentation/view/widgets/custom_elevated_button.dart';
import 'package:moment/features/auth/presentation/view/widgets/title_body_auth.dart';
import 'package:moment/features/auth/presentation/view/widgets/user_sign_up_form.dart';
import 'package:moment/features/home_view.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final signUpCubit = BlocProvider.of<AuthCubit>(context);
      final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
       if (state is UserSignSuccessState) {
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeView(),));
       }else if(state is FeiledCreatedUserState){
             ScaffoldMessenger.of(context).showSnackBar( SnackBar(
              backgroundColor: Colors.red,content:
               Text(state.massage)));
       }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            children: [
              const TitleBodyAuth(
                titleText: 'Moment',
                bodyText: 'Share your happy moment',
              ),
               UserSignUpForm(
                nameController:nameController,
                emailController:emailController,
                passwordController:passwordController,
               ),
              CustomElevatedButton(
                onPressed: () {
                  if (emailController.text.isEmpty && passwordController.text.isEmpty && nameController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content:
                              Text('Check Password And Email, Name Field Is Empty')));
                  }
                  else if (emailController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text('Check Email Field Is Empty')));
                    } else if (passwordController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text('Check Password Field Is Empty')));
                    }else if (nameController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text('Check Name Field Is Empty')));
                     }else{
                      signUpCubit.registerWithEmail(email: emailController.text,
                       password: passwordController.text,
                        name: nameController.text);
                     }
                },
                buttonText: 'Sign Up',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Do You Have Account?',
                    style: StyleText.textStyle14,
                  ),
                  AuthSignTextButton(
                    textButton: "Sign In",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInView(),
                          ));
                    },
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
