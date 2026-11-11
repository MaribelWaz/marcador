 import 'package:flutter/material.dart';

 class TeamPanel extends StatelessWidget{
  final String nombre;
  final Color colorClaro;
  final Color colorOscuro;
  final int puntos;
  final VoidCallback alSumar;
  final VoidCallback alRestar;

  const TeamPanel({super.key, required this.nombre, required this.colorClaro, required this.colorOscuro, required this.puntos, required this.alSumar, required this.alRestar});
  
  @override
  Widget build(BuildContext context){
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: InkWell(
              onTap: alSumar,
              child: Container(
                color: colorClaro,
                child: const Center(
                  child: Icon(Icons.add, size: 64, color: Colors.white),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}