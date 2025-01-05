import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nature_0f_code/routes/route_utils.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, this.error});

  final String? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppPage.error.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(error ?? ''),
            TextButton(
              onPressed: () {
                GoRouter.of(context).goNamed(AppPage.home.name);
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
