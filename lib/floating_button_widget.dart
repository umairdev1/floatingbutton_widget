import 'package:flutter/material.dart';

class FloatingButtonWidget extends StatefulWidget {
  const FloatingButtonWidget({super.key});

  @override
  State<FloatingButtonWidget> createState() => _FloatingButtonWidgetState();
}

class _FloatingButtonWidgetState extends State<FloatingButtonWidget> {
  int count = 0;
  void increment() {
    //add setState
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          increment();
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
          child: Text(
        count.toString(),
        style: const TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
      )),
    );
  }
}
