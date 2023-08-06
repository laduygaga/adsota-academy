import 'package:flutter/material.dart';

import 'molecules/appbar.dart';
import 'atoms/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adsota Academy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            forceElevated: true,
            shadowColor: Colors.black,
            pinned: true,
            // stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: MyAppBar(
                logo: "assets/images/logo.svg",
                widthLogo: 29.73,
                heightLogo: 46,
                backgroundColor: "0xFF0353CC",
                // toolbarHeight: 78,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // first container include 2 side, left side include 3 container as row, right side include 1 container as image
                // left side: row 1 is text: "Adsota Academy", x:132, y:79, width: 663, height:225, bold 75
                // left side: row 2 is text: "Learn from the best", x:132, y:334, width: 592, height:123, regular 24
                // left side: row 3 is button: "Get Started", x:132, y: 500, width: 200, height: 50, bold 24
                // right side: image: "assets/images/hero.png", x: 783, y: 58, width: 527, height: 511 
                Container(
                  width: 1440,
                  height: 600,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        width: 663,
                        height: 600,
                        child: Column(
                          children: [
                            Container(
                              width: 663,
                              height: 225,
                              margin: const EdgeInsets.only(left: 132, top: 79),
                              child: const Text(
                                "LEARN UNLEARN RELEARN",
                                style: TextStyle(
                                  color: Color(0xFF0353CC),
                                  fontSize: 70,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 592,
                              height: 123,
                              margin: const EdgeInsets.only(left: 132, top: 34),
                              child: const Text(
                                "Learn from the best",
                                style: TextStyle(
                                  color: Color(0xFF0353CC),
                                  fontSize: 24,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 50,
                              margin: const EdgeInsets.only(top: 66),
                              child: const Button(
                                width: 314,
                                height: 71,
                                label: "Dang Ky Ngay",
                                bgColor: "0xFFFACB28",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 527,
                        height: 511,
                        margin: const EdgeInsets.only(top: 58),
                        child: Image.asset(
                          "assets/images/asian-girl.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

