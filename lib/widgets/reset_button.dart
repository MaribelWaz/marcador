import 'package:flutter/material.dart';

//Boton reset. No guarda puntos, solo avisa a la pantalla de que lo han pulsado
class ResetButton extends StatelessWidget {
  //Funcion que recibe la pantalla y ejecuta al pulsar
  final VoidCallback alReiniciar;
  final Color colorGris;

  //Constructor
  const ResetButton({super.key, required this.alReiniciar, required this.colorGris});

  @override
  Widget build(BuildContext context) {
    //Boton de reset, con borde, icono y texto
    return OutlinedButton.icon(
      //Estilo del boton: espacio interior, colores, borde y esquinas redondeadas
      style: OutlinedButton.styleFrom(
        
        padding: EdgeInsets.only(left: 70, right: 70, top: 20, bottom: 20),
        foregroundColor: Colors.white, //Color del icono y el texto
        backgroundColor: colorGris, //Color del fondo del boton
        side: BorderSide(color: Colors.white, width: 1), //Borde color blanco del boton
        shape: RoundedRectangleBorder( 
          borderRadius: BorderRadius.circular(18), //Bordes redondeados 
        ),
      ),

      //Al pulsarlo, ejecuta la función alReiniciar que decide la pantalla
      onPressed: alReiniciar,
      icon: const Icon(Icons.refresh, size: 23), //Icono de refrescar
      label: const Text( //Texto del boton 'RESET'
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
