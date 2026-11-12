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
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.circle,
              size: 15, 
              color: colorAzul),
              const SizedBox(width: 6),
              Text(
                'LOCAL',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: colorAzul,
                )
              )
            ],
          )
        ],
      ),
    );
  }
}
