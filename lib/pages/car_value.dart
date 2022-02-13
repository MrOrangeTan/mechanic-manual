import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main(List<String> args) {
  runApp(const MaterialApp(home: Value()));
}

class Value extends StatefulWidget {
  const Value({Key? key}) : super(key: key);

  @override
  _ValueState createState() => _ValueState();
}

class _ValueState extends State<Value> {
  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: ListView(
          children: [
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl(
                      "https://www.consumerreports.org/cars/car-value-estimator/");
                },
                child: const Text("Consumer Reports"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl(
                      "https://www.hagerty.com/apps/valuationtools/search/auto");
                },
                child: const Text("Hagerty"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl("https://www.autotrader.com/car-values/");
                },
                child: const Text("Autotrader"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller
                      .loadUrl("https://www.nadaguides.com/Cars/Manufacturers");
                },
                child: const Text("NADA Guids"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl("https://www.edmunds.com/appraisal/");
                },
                child: const Text("Edmunds"),
              ),
            ),
          ],
        )),
        appBar: AppBar(
          title: const Text("Buy Vehicle Parts"),
        ),
        body: WebView(
          initialUrl:
              "https://www.consumerreports.org/cars/car-value-estimator/",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            controller = webViewController;
          },
        ));
  }
}
