import 'package:flutter/material.dart';
import 'package:uts_mobile/home_page.dart';

class PageResep extends StatefulWidget {
  const PageResep({super.key});

  @override
  State<PageResep> createState() => _PageResepState();
}

class _PageResepState extends State<PageResep> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Daftar Resep"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Menu belum ada"),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(
                    MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }),
                  );
                },
                child: const Text("Kembali"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
