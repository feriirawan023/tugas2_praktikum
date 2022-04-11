import 'package:flutter/material.dart';
import 'package:tugas2_praktikum/profil.dart';
// import 'profile.dart';

class HalamanDua extends StatefulWidget {
  const HalamanDua({Key? key}) : super(key: key);

  @override
  State<HalamanDua> createState() => _HalamanDuaState();
}

class _HalamanDuaState extends State<HalamanDua> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(156, 78, 78, 78),
          elevation: 0.0,
          centerTitle: true,
          title: const Text('Dashboard',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              )),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.person, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HalamanTiga(),
                  ),
                );
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 15),
              child: Text("Opsi Pembayaran"),
            ),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Container(
                    height: 125,
                    width: 125,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/gopay.png'),
                            fit: BoxFit.cover)),
                  ),
                  title: const Text("Gopay"),
                  subtitle: const Text("Bayar dengan Gopay"),
                ),
                ListTile(
                  leading: Container(
                    height: 125,
                    width: 125,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/ovo.png'),
                            fit: BoxFit.cover)),
                  ),
                  title: const Text("OVO"),
                  subtitle: const Text("Bayar dengan OVO"),
                ),
                ListTile(
                  leading: Container(
                    height: 125,
                    width: 125,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/dana.png'),
                            fit: BoxFit.cover)),
                  ),
                  title: const Text("DANA"),
                  subtitle: const Text("Bayar dengan Dana"),
                ),
                ListTile(
                  leading: Container(
                    height: 125,
                    width: 125,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/linkaja.png'),
                            fit: BoxFit.cover)),
                  ),
                  title: const Text("Link Aja"),
                  subtitle: const Text("Bayar dengan Link Aja"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}