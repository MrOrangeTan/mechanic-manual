import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main(List<String> args) {
  runApp(const MaterialApp(home: Search()));
}

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(child: Text("VIN Check")),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller
                      .loadUrl("https://vincheck.info/check/vin-check.php");
                },
                child: const Text("VinCheck"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller
                      .loadUrl("https://www.vehiclehistory.com/vin-check");
                },
                child: const Text("Vehicle History"),
              ),
            ),
            const DrawerHeader(
              child: Text("License Check"),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl(
                      "https://vincheck.info/free-license-plate-lookup");
                },
                child: const Text("VinCheck"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl(
                      "https://www.vehiclehistory.com/license-plate-search");
                },
                child: const Text("Vehicle History"),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Vehicle Search"),
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: "https://vincheck.info/free-vin-decoder",
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              controller = webViewController;
            },
          ),
        ],
      ),
    );
  }
}
