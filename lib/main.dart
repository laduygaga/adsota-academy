import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
// import 'pages/desktop2.dart';
// import 'pages/desktop3.dart';
import 'package:device_preview/device_preview.dart';
// import 'package:go_router/go_router.dart';

// final _router = GoRouter(
//   routes: [
//     GoRoute(
//       path: '/',
//       builder: (context, state) => MyHomePage(),
//     ),
//   ],
// );

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    // return MaterialApp.router(
    //   title: "Adsota Academy",
    //   routerConfig: _router,
    // );
    return MaterialApp(
      title: "Adsota Academy",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
