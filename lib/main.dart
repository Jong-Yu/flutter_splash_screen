import 'package:flutter/material.dart';
import 'package:hello_world/screen/column_row.dart';

void main() {
  runApp(MaterialApp(
    home: ColumnRow(),
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
