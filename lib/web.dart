import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Web extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
          title: const Text('Im walking on sunshine'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 131, 179, 143)),
      body: const WebView(
        initialUrl:
            'https://www.youtube.com/watch?v=iPUmE-tne5U&ab_channel=KatrinaTheWavesVEVO',
        javascriptMode: JavascriptMode.unrestricted,
      ));
}
