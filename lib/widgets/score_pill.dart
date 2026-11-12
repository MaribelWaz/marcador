import 'package:flutter/material.dart';

class ScorePill extends StatelessWidget {
  final Color colorAzul;
  final Color colorRojo;
  final int puntosLocal;
  final int puntosVisitante;

  const ScorePill({
    super.key,
    required this.colorAzul,
    required this.colorRojo,
    required this.puntosLocal,
    required this.puntosVisitante,
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      //Separacion de todos los lados
      padding: EdgeInsets.all(15),
      //Rectangulo contenedor del marcador
      decoration: BoxDecoration(
        color: Color(0xFF333333),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white, width: 1.5),
        
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Container(
            padding: EdgeInsets.only(right: 10, left: 10, top:2, bottom: 2),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15),
              
            ),
            child: Row(
              children: [
                Text(
                  '$puntosLocal',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: colorAzul,
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  'VS',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 20),

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
          ),//Fila para el equipo visitante
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
