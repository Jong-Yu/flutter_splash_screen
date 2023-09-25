import 'package:flutter/material.dart';
import 'package:hello_world/layout/main_layout.dart';

class RouteThreeScreen extends StatelessWidget {
  const RouteThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(
      title: 'Route Three Screen',
      children: [
        Text(
          'args: $args',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Pop'),
        ),
      ],
    );
  }
}
