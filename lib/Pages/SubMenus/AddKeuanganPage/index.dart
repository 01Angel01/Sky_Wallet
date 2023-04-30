import 'package:flutter/material.dart';
import 'package:skywallet/Modules/Variables/Theme.dart';
import 'package:skywallet/Pages/SubMenus/AddKeuanganPage/Tabs/PemasukanTab.dart';
import 'package:skywallet/Pages/SubMenus/AddKeuanganPage/Tabs/PengeluaranTab.dart';

class AddKeuanganPage extends StatefulWidget {
  const AddKeuanganPage({Key key}) : super(key: key);

  @override
  _AddKeuanganPageState createState() => _AddKeuanganPageState();
}

class _AddKeuanganPageState extends State<AddKeuanganPage> {
  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          backgroundColor: navbarBg,
          title: const Text('Catatan Keuangan'),
          actions: const [],
        ),
        body: Container(
            color: primaryColor,
            height: fullHeight,
            child: Column(
              children: [
                DefaultTabController(
                  length: 2,
                  child: Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          constraints: const BoxConstraints(maxHeight: 150.0),
                          child: Material(
                            color: Colors.transparent,
                            child: TabBar(
                              indicatorColor: Colors.transparent,
                              tabs: [
                                const Tab(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Pemasukan"),
                                  ),
                                ),
                                const Tab(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Pengeluaran"),
                                  ),
                                ),
                              ],
                              labelColor: primaryColor,
                              unselectedLabelColor: Colors.grey,
                              indicatorSize: TabBarIndicatorSize.label,
                              indicator: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                ),
                                color: Color.fromARGB(255, 166, 204, 242),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            padding: const EdgeInsets.only(top: 10),
                            height: MediaQuery.of(context).size.height,
                            child: TabBarView(
                              children: [
                                const PemasukanTab(),
                                PengeluaranTab()
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
