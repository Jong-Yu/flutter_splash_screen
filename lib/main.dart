import 'package:flutter/material.dart';
import 'package:hello_world/screen/web_view.dart';

void main() {
  // Flutter 프레임워크가
  // 앱을 실행할 준비가 될떄까지 기다린다.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    home: WebViewScreen(),
  ));
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
