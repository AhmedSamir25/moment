import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:moment/features/auth/presentation/view/sign_up.dart';
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
    return MaterialApp(
      title: 'Moment',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SignUpView(),
    );
  }
}
