import 'package:flutter/material.dart';
import 'package:hello_world/screen/web_view.dart';

void main() {
  // Flutter 프레임워크가
  // 앱을 실행할 준비가 될떄까지 기다린다.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      home: WebViewScreen(),
    ),
  );
}
