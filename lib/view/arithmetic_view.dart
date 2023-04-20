import 'package:flutter/material.dart';

import '../model/arithmetic.dart';

// const -> compile time
// final -> run time

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  var gap = const SizedBox(height: 12);
  int first = 0;
  int second = 0;
  int result = 0;
  Arithmetic arithmetic = Arithmetic();

  void add() {
    setState(() {
      result = arithmetic.add(first, second);
    });
  }

  void sub() {
    setState(() {
      result = arithmetic.sub(first, second);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetics'),
      ),
      body: Column(
        children: [
          gap,
          TextField(
            onChanged: (value) {
              first = int.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Enter first Number',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
          gap,
          TextField(
            onChanged: (value) {
              second = int.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Enter second Number',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                add();
              },
              child: const Text('ADD'),
            ),
          ),
          gap,
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                sub();
              },
              child: const Text('SUBTRACT'),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Result: $result',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
