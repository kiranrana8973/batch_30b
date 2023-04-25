import 'package:first_flutter_app/view/arithmetic_view.dart';
import 'package:first_flutter_app/view/dashboard_view.dart';
import 'package:first_flutter_app/view/si_vew.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/siRoute',
      routes: {
        '/': (context) => const DashboardView(),
        '/arithmeticRoute': (context) => const ArithmeticView(),
        '/siRoute': (context) => const SiView(),
      },
    );
  }
}
