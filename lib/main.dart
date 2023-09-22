import 'package:flutter/material.dart';
import 'package:hello_world/screen/stateful_widget.dart';

void main() {
  // Flutter 프레임워크가
  // 앱을 실행할 준비가 될떄까지 기다린다.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    home: Root(),
  ));
}

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  Color color = Colors.blue;
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: show
                      ? Stateful(
                          color: color,
                        )
                      : Container(),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        color = color == Colors.red ? Colors.blue : Colors.red;
                      });
                    },
                    child: Text(
                      '색깔 변경하기',
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        show = !show;
                      });
                    },
                    child: Text(
                      !show ? '위젯 생성하기' : '위젯 삭제하기',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Splash Screen
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF99231),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             'asset/img/logo.png',
//           ),
//           CircularProgressIndicator(
//             color: Colors.white,
//           ),
//         ],
//       ),
//     );
//   }
// }
