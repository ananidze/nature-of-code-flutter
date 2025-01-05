import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nature_0f_code/routes/route_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nature of Code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.push(AppPage.chapter1Motion.toPath),
              child: const Text('Chapter 1: Motion'),
            ),
          ],
        ),
      ),
    );
  }
}
