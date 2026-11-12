import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget{
  final VoidCallback alReiniciar;

  const ResetButton({
    super.key,
    required this.alReiniciar
  });

  @override
  Widget build(BuildContext context) {
    //Contenedor para el boton de reset
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF333333),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white, width: 1.5)
      ),
      child: OutlinedButton.icon(
        onPressed: alReiniciar, 
        icon:  const Icon(Icons.refresh, size: 20),
        label: const Text(
          'RESET',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        ),
    );
  }
}