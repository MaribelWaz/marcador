import 'package:flutter/material.dart';

//Cabecera con el icono y el titulo de la aplicacion
class ScoreboardHeader extends StatelessWidget {
  const ScoreboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.sports_basketball, size: 24),
        const SizedBox(width: 10),
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
