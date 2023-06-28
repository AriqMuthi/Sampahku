import 'package:flutter/material.dart';
import 'package:sampahku/pages/list.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff012970),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Text(
                    "Pengaturan",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Text(
                    "Halaman untuk pengaturan dan informasi dari sampahku.",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )
                ]),
          ),
          SizedBox(
            height: 400,
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("Ariq Muthi .A",
                      style: TextStyle(color: Colors.black)),
                  accountEmail: Text("ariqmuthi22@gmail.com",
                      style: TextStyle(color: Colors.black)),
                  currentAccountPicture: CircleAvatar(),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: const [
                      ListTile(
                          title: Text("Riwayat Transaksi"),
                          leading: Icon(Icons.history)),
                      ListTile(
                          title: Text("Pembritahuan"),
                          leading: Icon(Icons.notifications)),
                      ListTile(
                          title: Text("Pengaturan"),
                          leading: Icon(Icons.settings)),
                      ListTile(
                          title: Text("Keluar"), leading: Icon(Icons.logout)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
