import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/arithmeticRoute');
            },
            child: const Text('Arithmetic'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/siRoute');
            },
            child: const Text('SI'),
          ),
        ],
      ),
    );
  }
}
