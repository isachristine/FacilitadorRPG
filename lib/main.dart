import './screens/druid_screen.dart';
import './screens/sorcerer_screen.dart';
import './screens/warlock_screen.dart';
import './screens/barberian_screen.dart';
import './screens/rogue_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/selectClass_screen.dart';


void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SelectClass(),
      initialRoute: '/',
      routes: {
        'Druida': (ctx) => DruidScreen(),
        'Feiticeiro(a)': (ctx) => SorcererScreen(),
        'Bruxo(a)': (ctx) => WarlockScreen(),
        'Ladino(a)': (ctx) => RogueScreen(),
        'Bárbaro': (ctx) => BarberianScreen(),
      },
    );
  }
}

//class PlayerPage extends StatefulWidget {
//  @override
//  _PlayerPageState createState() => _PlayerPageState();
//}
//
//
//
//class _PlayerPageState extends State<PlayerPage> {
//  var lifePoints;
//  var armorPoints;
//  var extraLifePoints;
//
//  @override
//  Widget build(BuildContext context) {
//    final mediaQuery = MediaQuery.of(context);
//
//
//    return Scaffold(
//      backgroundColor: Colors.lightBlueAccent,
//      body: SingleChildScrollView(
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: <Widget>[
//            StatusCard('Classe de Armadura', armorPoints),
//            StatusCard('Pontos de Vida', lifePoints),
//            StatusCard('Vida Temporária', extraLifePoints),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                ModifierCard('Força', '9', '-1'),
//                ModifierCard('Destreza', '14', '+2'),
//                ModifierCard('Constituição', '14', '+2')
//              ],
//            ),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                ModifierCard('Inteligência', '13', '+3'),
//                ModifierCard('Sabedoria', '14', '+4'),
//                ModifierCard('Carisma', '13', '+1')
//              ],
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
