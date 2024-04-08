import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moment/features/auth/presentation/logic/user_image_cubit/user_image_cubit.dart';
import 'package:moment/features/auth/presentation/view/widgets/pick_image_view_body.dart';

class PickImageView extends StatelessWidget {
  const PickImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocProvider(
        create: (context) => UserImageCubit(),
        child: const PickImageViewBody(),
      ),
    );
  }
}
