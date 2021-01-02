import 'package:flutter/material.dart';
import 'status_widget.dart';
import 'modifier_widget.dart';

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
      backgroundColor: Colors.lightBlueAccent,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 40, 10, 25),
        child: Column(
          children: <Widget>[
            StatusCard('Classe de Armadura', 'Armadura', '13'),
            StatusCard('Pontos de Vida', 'Vida', '8'),
            StatusCard('Vida Temporária', ' ', '0'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ModifierCard('Força', '9', '-1'),
                ModifierCard('Destreza', '14', '+2'),
                ModifierCard('Constituição', '14', '+2')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ModifierCard('Inteligência', '13', '+3'),
                ModifierCard('Sabedoria', '14', '+4'),
                ModifierCard('Carisma', '13', '+1')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
