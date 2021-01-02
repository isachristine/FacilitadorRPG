import 'package:flutter/material.dart';

class ModifierCard extends StatelessWidget {
  final String title;
  final String points;
  final String resistance;

  ModifierCard(this.title, this.points, this.resistance);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              // Título do modificador
              alignment: Alignment.center,
              height: 20,
              width: 85,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(title),
            ),
            Container(
              // Mostra os pontos dos modificadores
              alignment: Alignment.center,
              height: 20,
              width: 85,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text(points),
            ),
            Container(
              // Mostra o teste de resistência do modificador
              alignment: Alignment.center,
              height: 20,
              width: 85,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
              child: Text(resistance),
            ),
          ],
        ),
      ),
    );
  }
}
