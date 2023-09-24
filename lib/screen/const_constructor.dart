import 'package:flutter/material.dart';

class ConstConstructor extends StatefulWidget {
  const ConstConstructor({super.key});

  @override
  State<ConstConstructor> createState() => _ConstConstructorState();
}

class _ConstConstructorState extends State<ConstConstructor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TestWidget(lable: 'a'),
            TestWidget(lable: 'b'),
            ElevatedButton(onPressed: (){
              setState(() {

              });
            }, child: const Text('빌드'))
          ],
        ),
      ),
    );
  }
}

class TestWidget extends StatelessWidget {
  final String lable;

  const TestWidget({ required this.lable, super.key});

  @override
  Widget build(BuildContext context) {
    print('${lable} 빌드 실행!');

    return Text(lable);
  }
}
