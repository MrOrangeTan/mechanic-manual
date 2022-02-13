import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main(List<String> args) {
  runApp(const MaterialApp(home: Manuals()));
}

class Manuals extends StatefulWidget {
  const Manuals({Key? key}) : super(key: key);

  @override
  _ManualsState createState() => _ManualsState();
}

class _ManualsState extends State<Manuals> {
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
                controller.loadUrl("https://www.manualslib.com/");
              },
              child: const Text("ManualsLib"),
            ),
          ),
          ListTile(
            title: ElevatedButton(
              onPressed: () {
                controller.loadUrl("https://carmanuals.org/#");
              },
              child: const Text("Car Manuals"),
            ),
          ),
          ListTile(
            title: ElevatedButton(
              onPressed: () {
                controller.loadUrl("https://www.onlymanuals.com/");
              },
              child: const Text("Only Manuals"),
            ),
          ),
        ],
      )),
      appBar: AppBar(
        title: const Text("Search Manuals"),
      ),
      body: WebView(
        initialUrl: "https://www.manualslib.com/",
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          controller = webViewController;
        },
      ),
    );
  }
}
