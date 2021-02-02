import 'package:flutter/material.dart';

class ClassSelection extends StatelessWidget {
  final String name;
  //nome da classe de RPG que ficará disponível na página de seleção e
  //também será o meio pelo qual o app vai navegar até a página desejada
  final Color color;
  //Cor do botão de cada classe do RPG, usada para a gradiant do InkWell

  ClassSelection(this.name, this.color);
  // Solicitado na tela SelectClass, por meio do uso do botão abaixo

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(name),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          name,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}