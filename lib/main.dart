import 'package:flutter/material.dart';
import 'package:mechanic_manual/pages/manuals.dart';
import 'package:mechanic_manual/pages/buy_parts.dart';
import 'package:mechanic_manual/pages/car_search.dart';
import 'package:mechanic_manual/pages/car_value.dart';
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    home: const Menu(),
    routes: <String, WidgetBuilder>{
      "/manuals": (BuildContext context) => const Manuals(),
      "/parts": (BuildContext context) => const Parts(),
      "/search": (BuildContext context) => const Search(),
      "/value": (BuildContext context) => const Value(),
    },
  ));
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Menu"),
      ),
      backgroundColor: Colors.blueGrey[300],
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 25),
                borderRadius: const BorderRadius.all(Radius.circular(90)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/manuals");
                    },
                    icon: const Image(image: AssetImage("assets/app_icon.png")),
                    iconSize: 300,
                  ),
                  const Text(
                    "Manuals",
                    style: TextStyle(fontSize: 50),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 25),
                borderRadius: const BorderRadius.all(Radius.circular(90)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/value");
                    },
                    icon: const Image(image: AssetImage("assets/car_icon.png")),
                    iconSize: 300,
                  ),
                  const Text(
                    "Value Car",
                    style: TextStyle(fontSize: 50),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 25),
                borderRadius: const BorderRadius.all(Radius.circular(90)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/search");
                    },
                    icon: const Image(
                        image: AssetImage("assets/search_icon.png")),
                    iconSize: 300,
                  ),
                  const Text(
                    "Search A Car",
                    style: TextStyle(fontSize: 50),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 25),
                borderRadius: const BorderRadius.all(Radius.circular(90)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/parts");
                    },
                    icon:
                        const Image(image: AssetImage("assets/parts_icon.png")),
                    iconSize: 300,
                  ),
                  const Text(
                    "Buy Parts",
                    style: TextStyle(fontSize: 50),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
