import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          const Center(
            child: Text('Home'),
          ),
          FilledButton.tonal(
            onPressed: () {
              context.push('/detail/1');
            },
            child: const Text('Go to /detail/1'),
          ),
        ],
      ),
    );
  }
}
