import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moment/core/helper/check_login_state.dart';
import 'package:moment/features/auth/data/local_data/save_user_id.dart';
import 'package:moment/features/auth/data/repository/auth_repository.dart';
import 'package:moment/features/auth/presentation/logic/auth_cubit/auth_cubit.dart';
import 'package:moment/features/auth/presentation/view/sign_up.dart';
import 'package:moment/firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await SetUserId.cacheInitialization();
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
      child: const CheckUserLogin(),
    );
  }
}
