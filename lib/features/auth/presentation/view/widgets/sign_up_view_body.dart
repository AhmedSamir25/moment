import 'package:flutter/widgets.dart';
import 'package:moment/features/auth/presentation/view/widgets/title_body_auth.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TitleBodyAuth(titleText: 'Moment',
        bodyText: 'Sher your happy moment',),
      ],
    );
  }
}