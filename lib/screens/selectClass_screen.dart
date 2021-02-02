import 'package:facilitadoraventurabs/widgets/classButton.dart';
import 'package:flutter/material.dart';

class SelectClass extends StatefulWidget {
  static const routeName = 'main.dart';
  // Nomeei a rota como main, para que possa buscar a lista de rotas

  @override
  _SelectClassState createState() => _SelectClassState();
}

class _SelectClassState extends State<SelectClass> {
  @override

  // O Widget abaixo é uma tela com botões "ClassSelection", cujo argumento
  // name vai ser incluído no botão e também será o mesmo texto usado para
  // a lista de rotas, possibilitando assim que a navegação ocorra com base
  // no nome da classe do RPG.
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClassSelection('Druida', Colors.green),
            SizedBox(height: 10,),
            ClassSelection('Feiticeiro(a)', Colors.purple),
            SizedBox(height: 10,),
            ClassSelection('Bruxo(a)', Colors.red),
          ],
        ),
      ),
    );
  }
}