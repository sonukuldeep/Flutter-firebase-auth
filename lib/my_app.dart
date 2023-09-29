import 'package:flutter/material.dart';
import 'package:flutter_auth/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:flutter_auth/pages/home_screen.dart';
import 'package:flutter_auth/pages/login.dart';
import 'package:flutter_auth/pages/welcome_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

class MyApp extends StatelessWidget {
  final UserRepository userRepository;
  const MyApp({super.key, required this.userRepository});

  @override
  Widget build(BuildContext context) {
    return (BlocProvider<AuthenticationBloc>(
      create: (context) => AuthenticationBloc(userRepository: userRepository),
      child: MaterialApp(
        title: 'Flutter Auth',
        home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
            if (state.status == AuthenticationStatus.authenticated) {
              return const HomeScreen();
            } else {
              return const WelcomeScreen();
            }
          },
        ),
      ),
    ));
  }
}
