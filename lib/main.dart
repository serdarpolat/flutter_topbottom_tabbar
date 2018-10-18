import 'package:flutter/material.dart';
import './sayfa1.dart' as sayfa1;
import './sayfa2.dart' as sayfa2;
import './sayfa3.dart' as sayfa3;

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sayfalar(),
    ),
  );
}

class Sayfalar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SayfalarDurum();
}

class SayfalarDurum extends State<Sayfalar> with TickerProviderStateMixin {
  TabController ctrl;

  @override
  void initState() {
    super.initState();
    ctrl = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sayfalar'),
        bottom: TabBar(
          controller: ctrl,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.flight),
            ),
            Tab(
              icon: Icon(Icons.hotel),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          controller: ctrl,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.flight),
            ),
            Tab(
              icon: Icon(Icons.hotel),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: ctrl,
        children: <Widget>[
          sayfa1.SayfaBir(),
          sayfa2.SayfaIki(),
          sayfa3.SayfaUc(),
        ],
      ),
    );
  }
}
