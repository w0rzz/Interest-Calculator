import 'package:flutter/material.dart';
import 'package:interest_calc/ui/monthly_cost.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interest Calculator',
      home: Router(),
    );
  }
}

class Router extends StatefulWidget {
  @override
  _RouterState createState() => _RouterState();
}

class _RouterState extends State<Router> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 1);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PiggyVest'),
        backgroundColor: Colors.deepPurple[400],
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(text: 'Interest Calculator')
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          Calculator()
        ],
      ),
    );
  }
}
