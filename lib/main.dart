// import 'package:currency_converter/currency_converter_cupertino_page.dart';
// import 'package:currency_converter/currency_converter_material_page.dart';
// import 'package:currency_converter/homepage.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// Types of Widgets
// 1. StatelessWidget
// 2. StatefulWidget

// State

// 1. Material Design
// 2. Cupertino Design
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: CurrencyConverterMaterialPage(),
//     );
//   }
// }

// class MyCupertinoApp extends StatelessWidget {
//   const MyCupertinoApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const CupertinoApp(
//       home: HomePages(),
//     );
//   }
// }

import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:currency_converter/homescreen.dart';
import 'package:currency_converter/nepalese_to_usd.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        CurrencyConverterMaterialPage.id: (context) =>
            CurrencyConverterMaterialPage(),
        NrsToUsd.id: (context) => NrsToUsd(),
      },
      // home: HomeScreen(),
    );
  }
}
