import 'package:flutter/widgets.dart';
import 'package:moment/features/home/presentation/view/widgets/post_body.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        PostBody(),
      ],
    );
  }
}