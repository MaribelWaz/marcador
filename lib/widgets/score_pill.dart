import 'package:flutter/material.dart';

//Clase que extiende StatelessWidget, ya que no va a cambiar
class ScorePill extends StatelessWidget {
  final Color colorAzul;
  final Color colorRojo;
  final int puntosLocal;
  final int puntosVisitante;

  //Constructor
  const ScorePill({
    super.key,
    required this.colorAzul,
    required this.colorRojo,
    required this.puntosLocal,
    required this.puntosVisitante,
  });

  //Sobreescribir widget Build
  @override
  Widget build(BuildContext context) {
    //Devuelve un contenedor con los elementos del marcador
    return Container(
      //Separacion de todos los lados
      padding: EdgeInsets.all(15),
      //Rectangulo contenedor del marcador
      decoration: BoxDecoration(
        color: Color(0xFF333333),
        borderRadius: BorderRadius.circular(16), //Borde redondeado
        border: Border.all(color: Colors.white, width: 1.5),
        
      ),
      //Fila para el contenido del marcador
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, //Separación entre ambos
        children: [

          //Fila para el equipo local
          Row(
            children: [
              //Widget de icono de circulo, color azul
              Icon(Icons.circle, size: 15, color: colorAzul),
              //Separacion entre el icono y el texto
              const SizedBox(width: 6),
              //Texto del equipo local
              Text(
                'LOCAL',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: colorAzul,
                ),
              ),
            ],
          ),
          //Contenedor para la pildora de los puntos y el VS
          Container(
            //Separacion interior, más para los laterales que arriba y abajo
            padding: EdgeInsets.only(right: 10, left: 10, top:2, bottom: 2),
            //Estilo para el box
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15), //Bordes redondeados
              
            ),
            //Fila para los elementos de dentro de la pildora
            child: Row(
              children: [
                //Texto que muestra el valor de la variable local
                Text(
                  '$puntosLocal',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: colorAzul,
                  ),
                ),
                //Separacion entre los elementos
                const SizedBox(width: 20),
                //Texto VS
                Text(
                  'VS',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //Separacion entre elementos
                const SizedBox(width: 20),
                //Texto que muestra el valor de la variable visitante
                Text(
                  '$puntosVisitante',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: colorRojo,
                  ),
                ),
              ],
            )
          ),
          //Fila para el equipo visitante
          Row(
            children: [
              Text(
                'VISITA',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: colorRojo,
                ),
              
              ),
              const SizedBox(width: 6),
              Icon(
                Icons.circle, size: 15, color: colorRojo,
              )
            ],
          )
        ],
      ),
    );
  }
}
