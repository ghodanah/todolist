import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo 작성'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
        ),
      ),
    );
  }
}
