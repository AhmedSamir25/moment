import 'package:flutter/material.dart';
import 'package:moment/core/theme/text_style.dart';
import 'package:moment/features/auth/presentation/view/widgets/auth_text_button.dart';
import 'package:moment/features/auth/presentation/view/widgets/custom_elevated_button.dart';
import 'package:moment/features/auth/presentation/view/widgets/title_body_auth.dart';
import 'package:moment/features/auth/presentation/view/widgets/user_sign_in_form.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: ListView(
        children: [
          const TitleBodyAuth(titleText: 'Moment',
          bodyText: 'Sher your happy moment',),
          const UserSignInForm(),
          CustomElevatedButton(onPressed: () {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don’t Have Account?",style: StyleText.textStyle14,),
              AuthSignTextButton(onPressed: () {
                Navigator.pop(context);
              },)
            ],
          )
        ],
      ),
    );
  }
}