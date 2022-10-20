import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class CustomWebView extends StatefulWidget {
  const CustomWebView({Key? key,required this.url}) : super(key: key);
  final String url;
  @override
  State<CustomWebView> createState() => _CustomWebViewState(url);
}

class _CustomWebViewState extends State<CustomWebView> {
  String url;
  _CustomWebViewState(this.url);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Name'),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: WebView(
        initialUrl: url,
      ),
    );
  }
}
