import 'package:flutter/material.dart';
import 'package:hello_world/layout/main_layout.dart';
import 'package:hello_world/screen/navigation/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int? number;
  const RouteOneScreen({this.number, super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Route One Screen',
      children: [
        Text(
          number.toString(),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(456);
          },
          child: Text('Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => RouteTwoScreen(),
                settings: RouteSettings(
                  arguments: 789,
                ),
              ),
            );
          },
          child: Text("Push Route Two"),
        )
      ],
    );
  }
}
