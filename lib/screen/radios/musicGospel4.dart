import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:global_network/global_network.dart';


class RadioMusic4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  GlobalNetwork(
      child: WebView(
        initialUrl: 'https://appradio.app:8161/live',
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
