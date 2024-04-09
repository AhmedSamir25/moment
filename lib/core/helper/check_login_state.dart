
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moment/features/auth/presentation/view/sign_up.dart';
import 'package:moment/features/home_view.dart';

class CheckUserLogin extends StatefulWidget {
  const CheckUserLogin({super.key});

  @override
  State<CheckUserLogin> createState() => _CheckUserLoginState();
}

class _CheckUserLoginState extends State<CheckUserLogin> {
  @override
  Widget build(BuildContext context) {
    return  StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
        //Enter the Home Screen
          if (snapshot.hasData) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Moment',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
                useMaterial3: true,
              ),
              home: const HomeView(),
              );
          } else {
            // Enter the Sign Screen
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Moment',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
                useMaterial3: true,
              ),
              home: const SignUpView(),
            );
          }
        },
      );
  }
}