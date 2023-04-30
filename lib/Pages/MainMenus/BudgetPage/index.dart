import 'package:flutter/material.dart';
import 'package:skywallet/Modules/Variables/Theme.dart';
import 'package:skywallet/Pages/SubMenus/AddKeuanganPage/index.dart';

class BudgetPage extends StatefulWidget {
  const BudgetPage({Key key}) : super(key: key);

  @override
  _BudgetPageState createState() => _BudgetPageState();
}

class _BudgetPageState extends State<BudgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: navbarBg,
        title: const Text('Budgeting'),
        actions: [],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(children: []),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: navbarBg,
        child: const Icon(Icons.add),
      ),
    );
  }
}
