import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main(List<String> args) {
  runApp(const MaterialApp(home: Parts()));
}

class Parts extends StatefulWidget {
  const Parts({Key? key}) : super(key: key);

  @override
  _PartsState createState() => _PartsState();
}

class _PartsState extends State<Parts> {
  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: const [
            Make(),
            Model(),
          ],
        ),
      ),
    );
    /*return Scaffold(
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              child: ListTile(
                title: ElevatedButton(
                  onPressed: () {
                    controller.loadUrl("https://www.comparethecarpart.com/");
                  },
                  child: const Text("Compare Prices"),
                ),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl("https://www.autozone.com/");
                },
                child: const Text("AutoZone"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl("https://www.oreillyauto.com/");
                },
                child: const Text("O'Reilly Auto Parts"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl("https://shop.advanceautoparts.com/");
                },
                child: const Text("Advanced Auto Parts"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl("https://www.pepboys.com/");
                },
                child: const Text("Pep Boys"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl("https://www.carparts.com/");
                },
                child: const Text("CarParts.com"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl("https://www.buyautoparts.com/");
                },
                child: const Text("Buy Auto Parts"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl("https://www.partsgeek.com/");
                },
                child: const Text("Parts Geek"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl(
                      "https://www.walmart.com/cp/auto-and-tires/91083");
                },
                child: const Text("Walmart"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl("https://www.amazon.com/s?k=Auto+Parts");
                },
                child: const Text("Amazon"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl(
                      "https://www.ebay.com/b/Auto-Parts-and-Vehicles/6000");
                },
                child: const Text("Ebay"),
              ),
            ),
            const DrawerHeader(
              child: Text("Buy Cars"),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl(
                      "https://www.facebook.com/marketplace/category/vehicles");
                },
                child: const Text("Facebook Marketplace"),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  controller.loadUrl("https://www.ebay.com/b/Cars-Trucks/6001");
                },
                child: const Text("Ebay"),
              ),
            ),
          ],
        )),
        appBar: AppBar(
          title: const Text("Buy Vehicle Parts"),
        ),
        body: WebView(
          initialUrl: "https://www.comparethecarpart.com/",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            controller = webViewController;
          },
        ));*/
  }
}

class Make extends StatefulWidget {
  const Make({Key? key}) : super(key: key);

  @override
  _MakeState createState() => _MakeState();
}

class _MakeState extends State<Make> {
  static var dropdownValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      hint: const Text("Make"),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>[
        "Abadal",
        "Abarth",
        "Abbott-Detroit",
        "ABT",
        "AC",
        "Acura",
        "Aixam",
        "Alfa Romeo",
        "Alpina",
        "Alpine",
        "Alta",
        "Alvis",
        "AMC",
        "Apollo",
        "Arash",
        "Arcfox",
        "Ariel",
        "ARO",
        "Arrival",
        "Arrinera",
        "Artega",
        "Ascari",
        "Askam",
        "Aspark",
        "Aston Martin",
        "Atalanta",
        "Auburn",
        "Audi",
        "Austin",
        "Autobacs",
        "Autobianchi",
        "Axon",
        "BAC",
        "BAIC Motor",
        "Baojun",
        "BeiBen",
        "Bentley",
        "Berkeley",
        "Berliet",
        "Bertone",
        "Bestune",
        "BharatBenz",
        "Bitter",
        "Bizzarrini",
        "BMW",
        "Borgward",
        "Bowler",
        "Brabus",
        "Brammo",
        "Brilliance",
        "Bristol",
        "Brooke",
        "Bufori",
        "Bugatti",
        "Buick",
        "BYD",
        "Byton",
        "Cadillac",
        "CAMC",
        "Canoo",
        "Caparo",
        "Carlsson",
        "Caterham",
        "Changan",
        "Changfeng",
        "Chery",
        "Chevrolet",
        "Chrysler",
        "Cisitalia",
        "Citroën",
        "Cizeta",
        "Cole",
        "Corre La Licorne",
        "Dacia",
        "Daewoo",
        "DAF",
        "Daihatsu",
        "Daimler",
        "Dartz",
        "Datsun",
        "David Brown",
        "Dayun",
        "De Tomaso",
        "Delage",
        "DeSoto",
        "Detroit Electric",
        "Devel Sixteen",
        "Diatto",
        "DINA",
        "DKW",
        "DMC",
        "Dodge",
        "Dongfeng",
        "Donkervoort",
        "Drako",
        "DS",
        "Duesenberg",
        "Eagle",
        "EDAG",
        "Edsel",
        "Eicher",
        "Elemental",
        "Elfin",
        "Elva",
        "Englon",
        "ERF",
        "Eterniti",
        "Exeed",
        "9ff",
        "Facel Vega",
        "Faraday Future",
        "FAW",
        "Ferrari",
        "Fiat",
        "Fioravanti",
        "Fisker",
        "Foden",
        "Force Motors",
        "Ford",
        "Foton",
        "FPV",
        "Franklin",
        "Freightliner",
        "FSO",
        "GAC Group",
        "Gardner Douglas",
        "GAZ",
        "Geely",
        "General Motors",
        "Genesis",
        "Geo",
        "Geometry",
        "Gilbern",
        "Gillet",
        "Ginetta",
        "GMC",
        "Golden Dragon",
        "Gonow",
        "Great Wall",
        "Grinnall",
        "Gumpert",
        "Hafei",
        "Haima",
        "Haval",
        "Hawtai",
        "Hennessey",
        "Hillman",
        "Hindustan Motors",
        "Higer",
        "Hino",
        "Hispano-Suiza",
        "Holden",
        "Hommell",
        "Honda",
        "Hongqi",
        "Hongyan",
        "Horch",
        "HSV",
        "Hudson",
        "Hummer",
        "Hupmobile",
        "Hyundai",
        "IC Bus",
        "Infiniti",
        "Innocenti",
        "Intermeccanica",
        "IH",
        "International",
        "IKCO",
        "Irizar",
        "Isdera",
        "Iso",
        "Isuzu",
        "Iveco",
        "JAC",
        "Jaguar",
        "Jawa",
        "JBA Motors",
        "Jeep",
        "Jensen",
        "Jetta",
        "JMC",
        "Kaiser",
        "Kamaz",
        "Karlmann King",
        "Karma",
        "Keating",
        "Kenworth",
        "Kia",
        "King Long",
        "Koenigsegg",
        "KTM",
        "Lada",
        "Lagonda",
        "Lamborghini",
        "Lancia",
        "Land Rover",
        "Landwind",
        "Laraki",
        "Lexus",
        "Leyland",
        "Li Auto",
        "Lifan",
        "Ligier",
        "Lincoln",
        "Lister",
        "Lloyd",
        "Lobini",
        "LEVC",
        "Lordstown",
        "Lotus",
        "Lucid",
        "Luxgen",
        "Lynk & Co",
        "Mack",
        "Mahindra",
        "MAN",
        "Mansory",
        "Marcos",
        "Marlin",
        "Maserati",
        "Mastretta",
        "Maxus",
        "Maybach",
        "MAZ",
        "Mazda",
        "Mazzanti",
        "McLaren",
        "Melkus",
        "Mercedes-Benz",
        "Mercury",
        "Merkur",
        "MEV",
        "MG",
        "Microcar",
        "Mini",
        "Mitsubishi",
        "Mitsuoka",
        "MK",
        "Morgan",
        "Morris",
        "Mosler",
        "Navistar",
        "NEVS",
        "NIO",
        "Nikola",
        "Nissan",
        "Noble",
        "Oldsmobile",
        "Oltcit",
        "Opel",
        "OSCA",
        "Paccar",
        "Packard",
        "Pagani",
        "Panhard",
        "Panoz",
        "Pegaso",
        "Perodua",
        "Peterbilt",
        "Peugeot",
        "PGO",
        "Pierce-Arrow",
        "Pininfarina",
        "Plymouth",
        "Polestar",
        "Pontiac",
        "Porsche",
        "Praga",
        "Premier",
        "Prodrive",
        "Proton",
        "Qoros",
        "Radical",
        "RAM",
        "Rambler",
        "Ranz",
        "Renault",
        "Rezvani",
        "Riley",
        "Rimac",
        "Rinspeed",
        "Rivian",
        "Roewe",
        "Rolls-Royce",
        "Ronart",
        "Rossion",
        "Rover",
        "RUF",
        "Saab",
        "SAIC Motor",
        "Saipa",
        "Saleen",
        "Saturn",
        "Scania",
        "Scion",
        "SEAT",
        "Setra",
        "Shacman",
        "Simca",
        "Singer",
        "Singulato",
        "Sinotruk",
        "Sisu",
        "Škoda",
        "Smart",
        "Soueast",
        "Spania GTA",
        "Spirra",
        "Spyker",
        "SsangYong",
        "SSC",
        "Sterling",
        "Studebaker",
        "Stutz",
        "Subaru",
        "Suffolk",
        "Suzuki",
        "Talbot",
        "Tata",
        "Tatra",
        "Tauro",
        "TechArt",
        "Tesla",
        "Toyota",
        "Tramontana",
        "Trion",
        "Triumph",
        "Troller",
        "Tucker",
        "TVR",
        "UAZ",
        "UD",
        "Ultima",
        "Vandenbrink",
        "Vauxhall",
        "Vector",
        "Vencer",
        "Venturi",
        "Venucia",
        "VinFast",
        "VLF",
        "Volkswagen",
        "Volvo",
        "Wanderer",
        "W Motors",
        "Wartburg",
        "Weltmeister",
        "Western Star",
        "Westfield",
        "WEY",
        "Wiesmann",
        "Willys-Overland",
        "Workhorse",
        "Wuling",
        "XPeng",
        "Yulon",
        "Yutong",
        "Zarooq Motors",
        "Zastava",
        "ZAZ",
        "Zenos",
        "Zenvo",
        "Zhongtong",
        "Zinoro",
        "Zotye",
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class Model extends StatefulWidget {
  const Model({Key? key}) : super(key: key);

  @override
  _ModelState createState() => _ModelState();
}

class _ModelState extends State<Model> {
  var x = 1;
  var y = 2;
  var test = _MakeState.dropdownValue;
  var dropdownValue;
  @override
  Widget build(BuildContext context) {
    print(test);
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      hint: const Text("Model"),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: null,
    );
  }
}
