import 'package:flutter/material.dart';
import 'package:hello_world/layout/main_layout.dart';
import 'package:hello_world/screen/navigation/route_one_screen.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Navigation Widget',
      children: [
        ElevatedButton(
          onPressed: () async {
            final result = await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => RouteOneScreen(number: 123),
              ),
            );

            print(result);
          },
          child: Text("Push Route One"),
        ),
      ],
    );
  }
}
