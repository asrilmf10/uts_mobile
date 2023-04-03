import 'package:flutter/material.dart';
import 'package:uts_mobile/resep_page.dart';
import 'package:uts_mobile/request_page.dart';

// Materi Stateless & Statefull - 13
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    // Materi Responsive & Adaptive - 3
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Materi Theme - 7
      theme: ThemeData(
        brightness: isDark ? Brightness.dark : Brightness.light,
      ),
      home: Scaffold(
        // Materi AppBar - 9
        appBar: AppBar(
          // Materi Text - 1
          title: const Text("Aplikasi Resep Makanan"),
        ),
        // Materi Container - 15
        body: Container(
          width: lebar,
          height: tinggi,
          // Materi Row & Column - 14
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                width: 100,
                height: 75,
                decoration: BoxDecoration(
                  image:
                      // Materi Add an item - 2
                      DecorationImage(image: AssetImage("assets/MMLogo.png")),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 75,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextButton(
                            // Materi Dialog - 4
                            onPressed: () => showDialog(
                              context: context,
                              builder: (BuildContext context) => Dialog(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const Text(
                                          "Untuk menu daftar resep belum tersedia"),
                                      const SizedBox(height: 25),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text("Kembali"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            child: const Text(
                              "Daftar\nResep Ayam",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Roboto",
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 75,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextButton(
                            onPressed: () => showDialog(
                              context: context,
                              builder: (BuildContext context) => Dialog(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const Text(
                                          "Untuk menu daftar resep belum tersedia"),
                                      const SizedBox(height: 25),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text("Kembali"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            child: const Text(
                              "Daftar\nResep Daging",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Roboto",
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 75,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextButton(
                            onPressed: () => showDialog(
                              context: context,
                              builder: (BuildContext context) => Dialog(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const Text(
                                          "Untuk menu daftar resep belum tersedia"),
                                      const SizedBox(height: 25),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text("Kembali"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            child: const Text(
                              "Daftar\nResep Sayur",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Roboto",
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 75,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextButton(
                            onPressed: () => showDialog(
                              context: context,
                              builder: (BuildContext context) => Dialog(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const Text(
                                          "Untuk menu daftar resep belum tersedia"),
                                      const SizedBox(height: 25),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text("Kembali"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            child: const Text(
                              "Daftar\nResep Seafood",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Roboto",
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 75,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Materi Switch - 6
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
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                width: double.infinity,
                height: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(2),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.black),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(3),
                                width: 94,
                                height: 94,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                    image: AssetImage("assets/Ayam.png"),
                                  ),
                                  border: Border.all(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 110, top: 35),
                            child: const Text(
                              "Resep Ayam Lalap",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(2),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.black),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(3),
                                width: 94,
                                height: 94,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                    image: AssetImage("assets/Daging.png"),
                                  ),
                                  border: Border.all(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 110, top: 35),
                            child: const Text(
                              "Resep Sate Sapi",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(2),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.black),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(3),
                                width: 94,
                                height: 94,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                    image: AssetImage("assets/Ikan.png"),
                                  ),
                                  border: Border.all(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 110, top: 35),
                            child: const Text(
                              "Resep Ikan Saus Padang",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(2),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.black),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(3),
                                width: 94,
                                height: 94,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                    image: AssetImage("assets/Sayur.png"),
                                  ),
                                  border: Border.all(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 110, top: 35),
                            child: const Text(
                              "Resep Tumis Kangkung",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
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
        ),
        // Materi Drawer - 8
        drawer: Drawer(
          // Materi ListView - 12
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  "Resep Masakan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home_rounded),
                title: Text("Beranda"),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.view_list_rounded),
                title: Text("Daftar Resep"),
                onTap: () {
                  // Materi Navigation - 11
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return PageResep();
                    }),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.add_rounded),
                title: Text("Request Resep"),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return PageRequest();
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
