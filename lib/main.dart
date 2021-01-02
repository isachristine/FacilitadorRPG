import 'package:flutter/material.dart';
import 'package:facilitadoraventurabs/status_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlayerPage(),
    );
  }
}

class PlayerPage extends StatefulWidget {
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          StatusCard('Classe de Armadura', 'Armadura'),
          StatusCard('Pontos de Vida', 'Vida'),
          StatusCard('Vida Temporária', ' '),
        ],
      ),
    );
  }
}
