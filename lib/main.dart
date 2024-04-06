import 'package:flutter/material.dart';
import 'package:moment/features/auth/presentation/view/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
