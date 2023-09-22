import 'package:flutter/material.dart';

class Stateful extends StatefulWidget {
  final Color color;

  const Stateful({required this.color, super.key});

  @override
  State<StatefulWidget> createState() => _Stateful();
}

class _Stateful extends State<Stateful> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      color: widget.color,
    );
  }
}
