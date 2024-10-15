import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TradingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  WebView(
        initialUrl: 'https://www.tradingview.com/chart/ZCG9mNas/',
        javascriptMode: JavascriptMode.unrestricted,
       
      );
  }
}