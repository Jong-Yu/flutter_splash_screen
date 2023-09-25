import 'package:flutter/material.dart';
import 'package:hello_world/layout/main_layout.dart';
import 'package:hello_world/screen/navigation/route_three_screen.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(
      title: "Route Two Screen",
      children: [
        Text(
          'arguments: $arguments',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Pop"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/three', arguments: 999);
          },
          child: Text("Push Named"),
        ),
        ElevatedButton(
          onPressed: () {
            // push -> replace
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => RouteThreeScreen(),
              ),
            );
          },
          child: Text("Push ReplaceMent"),
        ),
        // pushNamed -> replace Named
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/three');
          },
          child: Text("Push Replacement Named"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (_) => RouteThreeScreen(),
              ),
              // 해당 조건에 맞는 url 은 살리고 나머지는 제거한다.
              // false :: 모두 지움
              // true :: 모두 살림
              // ex) route.settings.name == '/' :: url 이 '/' 인 경우를 제외한
              //     나머지는 다 제거한다.
              (route) => route.settings.name == '/',
            );
          },
          child: Text("Push And Remove Until"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
              '/three',
              (route) => route.settings.name == '/',
            );
          },
          child: Text("PushNamed And Remove Until"),
        ),
      ],
    );
  }
}
