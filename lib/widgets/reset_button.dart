import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  final VoidCallback alReiniciar;

  const ResetButton({super.key, required this.alReiniciar});

  @override
  Widget build(BuildContext context) {
    //Contenedor para el boton de reset
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.only(left: 70, right: 70, top: 20, bottom: 20),
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF333333),
        side: BorderSide(color: Colors.white, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(18),
        ),
      ),

      onPressed: alReiniciar,
      icon: const Icon(Icons.refresh, size: 23),
      label: const Text(
        'RESET',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
