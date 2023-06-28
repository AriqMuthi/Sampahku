import 'package:flutter/material.dart';
import 'package:sampahku/pages/setting.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff012970),
        body: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text(
                        "Transaksi",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Text(
                        "Silahkan melakukan transaksi penukaran koin di halaman ini.",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )
                    ]),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Koin ',
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                            Icon(Icons.paid)
                          ],
                        ),
                        const Text(
                          '1000',
                          style: TextStyle(
                            fontSize: 48,
                          ),
                        )
                      ],
                    )),
                Row(
                  children: [
                    GestureDetector(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.453,
                        margin: EdgeInsets.only(top: 15, right: 15, bottom: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.swap_horiz),
                                Text(
                                  "  Tukar",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            )),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.453,
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.card_giftcard),
                                Text(
                                  "  Hadiah",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            )),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                  child: ListView(),
                )
              ],
            )));
  }
}
