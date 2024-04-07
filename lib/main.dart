import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moment/features/auth/data/repository/auth_repository.dart';
import 'package:moment/features/auth/presentation/logic/auth_cubit/auth_cubit.dart';
import 'package:moment/features/auth/presentation/view/pick_image_view.dart';
import 'package:moment/firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MomentApp());
}

class MomentApp extends StatelessWidget {
  const MomentApp({super.key});

  @override
  Widget build(BuildContext context) {
     final AuthRepository authRepository = AuthRepository();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit(authRepository),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Moment',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const PickImageView(),
      ),
    );
  }
}
