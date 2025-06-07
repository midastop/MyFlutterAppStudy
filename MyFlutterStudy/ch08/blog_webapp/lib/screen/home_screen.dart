import "package:flutter/material.dart";
import "package:webview_flutter/webview_flutter.dart";

class HomeScreen extends StatelessWidget {

  HomeScreen({super.key});

  WebViewController webViewController = WebViewController()
    ..loadRequest(Uri.parse("https://m.naver.com"))
    //..loadRequest(Uri.parse("http://192.168.0.104:8080"))
    ..setJavaScriptMode(JavaScriptMode.unrestricted);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Flutter WebView"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              webViewController.loadRequest(Uri.parse("https://m.naver.com"));
            },
            icon: Icon(Icons.home,),
          ),
        ]
      ),
      body: WebViewWidget(
        controller: webViewController,
      ),
    );
  }
}