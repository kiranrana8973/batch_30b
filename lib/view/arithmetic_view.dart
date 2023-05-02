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
  final firstController = TextEditingController();
  int second = 0;
  int result = 0;

  Arithmetic arithmetic = Arithmetic();

  void add() {
    setState(() {
      result = arithmetic.add(int.parse(firstController.text), second);
    });

    Navigator.pushNamed(
      context,
      '/resultRoute',
      arguments: result,
    );
  }

  void sub() {
    setState(() {
      result = arithmetic.sub(int.parse(firstController.text), second);
    });

    Navigator.pushNamed(
      context,
      '/resultRoute',
      arguments: result,
    );
  }

  final meroKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetics'),
      ),
      body: Form(
        key: meroKey,
        child: Column(
          children: [
            gap,
            TextFormField(
              controller: firstController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter first Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
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
                  if (meroKey.currentState!.validate()) {
                    add();
                  }
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
      ),
    );
  }

  @override
  void dispose() {
    firstController.dispose();
    super.dispose();
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
