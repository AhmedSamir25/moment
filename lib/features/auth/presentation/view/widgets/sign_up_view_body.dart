import 'package:flutter/widgets.dart';
import 'package:moment/features/auth/presentation/view/widgets/custom_elevated_button.dart';
import 'package:moment/features/auth/presentation/view/widgets/title_body_auth.dart';
import 'package:moment/features/auth/presentation/view/widgets/user_sign_up_form.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const TitleBodyAuth(titleText: 'Moment',
          bodyText: 'Sher your happy moment',),
          const UserSignUpForm(),
          CustomElevatedButton(onPressed: () {},
          ),
        ],
      ),
    );
  }
}