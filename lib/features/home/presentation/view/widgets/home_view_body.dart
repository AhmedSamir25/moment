import 'package:flutter/widgets.dart';
import 'package:moment/features/home/presentation/view/widgets/post_body.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: 15,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        child: const PostBody()),
    );
  }
}