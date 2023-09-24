import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://blog.codefactory.ai');

class WebViewScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeUrl);

  WebViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Code Factory'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  controller.loadRequest(homeUrl);
                },
                icon: Icon(Icons.home)),
          ]),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
