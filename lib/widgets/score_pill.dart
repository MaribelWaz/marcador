import 'package:flutter/material.dart';

class ScorePill extends StatelessWidget {
  final Color colorAzul;
  final Color colorRojo;
  final int puntosLocal;
  final int puntosVisita;

  const ScorePill({
    super.key,
    required this.colorAzul,
    required this.colorRojo,
    required this.puntosLocal,
    required this.puntosVisita,
  });

  @override 
  Widget build(BuildContext context){
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white24),
        ),
        child: Row(
          children: [

          ],
        ),
      );
  } 
  }