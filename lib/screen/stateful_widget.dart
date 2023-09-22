import 'package:flutter/material.dart';

class Stateful extends StatefulWidget {
  final Color color;

  Stateful({required this.color, super.key}) {
    print('Widget Constructor 실행!');
  }

  @override
  _Stateful createState() {
    print('create State 실행!');
    return _Stateful();
  }
}

class _Stateful extends State<Stateful> {
  int number = 0;

  @override
  void initState() {
    super.initState();
    print('initState 실행!');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    print('didChangeDependencies 실행');
  }

  @override
  void deactivate() {
    print('deactivate 실행!');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose 실행!');
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant Stateful oldWidget) {
    print('didUpdateWidget 실행!');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('build 실행');

    return GestureDetector(
      onTap: () {
        setState(() {
          number++;
        });
      },
      child: Container(
        width: 50.0,
        height: 50.0,
        color: widget.color,
        child: Center(
            child: Text(
          number.toString(),
        )),
      ),
    );
  }
}
