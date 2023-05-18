import 'package:arabica_armour_mobile/lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ArabicaArmour(),
    );
  }
}

class ArabicaArmour extends StatelessWidget {
  final _router = GoRouter(initialLocation: '/main', routes: [
    GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (context, state) => const SplashScreen()),
    GoRoute(
      path: '/',
      name: 'main',
      builder: (context, state) => const Footer2(),
      // routes: <RouteBase>[
      //   GoRoute(
      //     path: '/camera',
      //     name: "camera",
      //     builder: (context, state) => Container(
      //       color: Colors.amber,
      //     ),
      //   )
      // ],
    ),
  ]);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) => RecentBloc(GettingRecentState())),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Arabica Armour',
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
      ),
    );
  }
}
