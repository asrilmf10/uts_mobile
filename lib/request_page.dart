import 'package:flutter/material.dart';
import 'package:uts_mobile/home_page.dart';

class PageRequest extends StatefulWidget {
  const PageRequest({super.key});

  @override
  State<PageRequest> createState() => _PageRequestState();
}

class _PageRequestState extends State<PageRequest> {
  late TextEditingController resep;
  late TextEditingController bahan;
  bool hasilRequest = false;
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return hasilRequest
        ? buildHasilRequest(context)
        : MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              brightness: isDark ? Brightness.dark : Brightness.light,
            ),
            home: Scaffold(
              appBar: AppBar(
                title: Text("Request Resep"),
              ),
              body: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.red),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop(
                                MaterialPageRoute(builder: (context) {
                                  return HomePage();
                                }),
                              );
                            },
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.home_filled,
                                    color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  "Beranda",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Switch(
                            value: isDark,
                            activeColor: Colors.blue,
                            onChanged: ((value) {
                              setState(() {
                                isDark = value;
                              });
                              print(isDark);
                            }),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Materi TextField - 5
                            TextField(
                              controller: resep,
                              onChanged: (value) {
                                setState(() {
                                  resep.text;
                                });
                              },
                              decoration: const InputDecoration(
                                labelText: "Resep :",
                                hintText: "Masukan nama resep yang di inginkan",
                              ),
                            ),
                            TextField(
                              controller: bahan,
                              onChanged: (value) {
                                setState(() {
                                  bahan.text;
                                });
                              },
                              decoration: const InputDecoration(
                                labelText: "Bahan :",
                                hintText: "Bahan utama resep",
                              ),
                            ),
                            buildHeader(context),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  @override
  void initState() {
    super.initState();
    resep = TextEditingController();
    bahan = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    resep.dispose();
    bahan.dispose();
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            )),
        onPressed: () {
          setState(() {
            hasilRequest = true;
          });
        },
        child: const Text("Request"),
      ),
    );
  }

  Widget buildHasilRequest(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hasil Request"),
            const SizedBox(width: 40, height: 15),
            Text("Nama Resep : ${resep.text}"),
            const SizedBox(width: 40, height: 15),
            Text("Bahan Utama : ${bahan.text}"),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  hasilRequest = false;
                });
              },
              child: const Text(
                "Kembali",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
