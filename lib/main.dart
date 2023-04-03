import 'package:flutter/material.dart';
import 'package:uts_mobile/home_page.dart';
import 'package:uts_mobile/resep_page.dart';
import 'package:uts_mobile/request_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: "Roboto",
          ),
        ),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.white,
        ),
      ),
      home: const HomePage(),
      // Materi Route - 10
      routes: {
        'home_page': (context) => const HomePage(),
        'resep_page': (context) => const PageResep(),
        'requset_page': (context) => const PageRequest(),
      },
    );
  }
}
