import 'package:flutter/material.dart';
import 'package:moment/core/theme/text_style.dart';
import 'package:moment/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Moment',style: StyleText.textStyle24.copyWith(
        fontFamily: 'Josefin Sans'
      ),),),
      body: const HomeViewBody(),
    );
  }
}