import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:global_network/global_network.dart';


class RadioMusic2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  GlobalNetwork(
      child: WebView(
        initialUrl: 'https://player.webradios.com.br/index.php?server=4&porta=9222&autoplay=0&vol=100&ssl=1&modelo=4',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
        },

        javascriptChannels: <JavascriptChannel>[
        ].toSet(),
        navigationDelegate: (NavigationRequest request) {
          if (request.url.startsWith('')) {
            return NavigationDecision.prevent;
          }

          return NavigationDecision.navigate;
        },
        onPageStarted: (String url) {

        },
        onPageFinished: (String url) {

        },
        gestureNavigationEnabled: true,
      ),
    );

  }
}

JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
  return JavascriptChannel(
      name: 'bio',
      onMessageReceived: (JavascriptMessage message) {
        Scaffold.of(context).showSnackBar(
          SnackBar(content: Text(message.message)),
        );
      });
}
