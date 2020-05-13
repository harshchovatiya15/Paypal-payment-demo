import 'dart:async';
import 'package:flutter/material.dart';
import 'package:paypal_demo/wel_come_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProcessPage extends StatefulWidget {
  @override
  _ProcessPageState createState() => _ProcessPageState();
}

class _ProcessPageState extends State<ProcessPage> {
  String selectedUrl;
  var price = 2;
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    selectedUrl =
        "https://www.sandbox.paypal.com/cgi-bin/webscr?business=sb-qxmyv847636@business.example.com&cmd=_xclick&item_name=Medium_Image&amount=$price&currency_code=USD";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: Text('Wel Come page'),
      //   leading: IconButton(
      //       icon: Icon(Icons.chevron_left),
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => HomePage(),
      //           ),
      //         );
      //       }),
      // ),
      body: WebView(
        initialUrl: selectedUrl,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
        javascriptChannels: <JavascriptChannel>[
          _toasterJavascriptChannel(context),
        ].toSet(),
        onPageFinished: (String url) {
          if (url.contains("checkout/done")) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => WelComePage()));
            // Timer(Duration(seconds: 5), () {
            //   Loader().showLoader(context);
            //   Timer(Duration(seconds: 5), () {
            //     Loader().showLoader(context);
            //     if (price != null) {

            //     } else {
            //       print('failed');
            //     }
            //     // Navigator.pushReplacement(
            //     //   context,
            //     //   MaterialPageRoute(
            //     //     builder: (context) => Feeds(),
            //     //   ),
            //     // );
            //   });
            // });
          } else {
            print('Failed');
          }
        },
      ),
      // body: Center(
      //   child: Container(
      //     child: Text('Your payment are successfully'),
      //   ),
      // ),
    );
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }
}

class Loader {
  void showLoader(BuildContext context) {
    showDialog<void>(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Center(
              child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Center(
                  child: const CircularProgressIndicator(),
                ),
              )
            ],
          ));
        });
  }

  void hideLoader(BuildContext context) {
    Navigator.pop(context);
  }
}
