import 'package:flutter/material.dart';

//Cabecera con el icono y el titulo de la aplicacion
class ScoreboardHeader extends StatelessWidget {
  const ScoreboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    //Icono y texto en horizontal
    return Row(
      children: [
        const Icon(Icons.sports_basketball, size: 24), //Icono de la pelota
        const SizedBox(width: 10), //Hueco entre icono y texto
        const Text(
          'MARCADOR',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
