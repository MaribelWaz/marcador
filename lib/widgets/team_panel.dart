import 'package:flutter/material.dart';

//Panel completo de un equipo. Se reutiliza en local y visitante
//Solamente cambian los datos que recibe desde la pantalla
class TeamPanel extends StatelessWidget {
  final String nombre; //Nombre que se muestra en la parte inferior
  final Color colorClaro; //Color de los botones de + y -
  final Color colorOscuro; //Color para la puntuacion
  final int puntos; //Puntuacion a mostrar
  final VoidCallback alSumar; //Funcion de que hacer al pulsar +, se decide en la pantalla
  final VoidCallback alRestar;//Funcion de que hacer al pulsar -, se decide en la pantalla

  const TeamPanel({
    super.key,
    required this.nombre,
    required this.colorClaro,
    required this.colorOscuro,
    required this.puntos,
    required this.alSumar,
    required this.alRestar,
  });

  @override
  Widget build(BuildContext context) {
    //Recorta el panel con esquinas redondeadas
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      //Apila las cuatro zonas de arriba a abajo
      child: Column(
        children: [
          //Zona 1: boton de  +  pulsable
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
          //Zona 2: puntuación en grande
          Expanded(
            flex: 6,
            child: Container(
              color: colorOscuro,
              child: Center(
                child: Text(
                  '$puntos',
                  style: const TextStyle(
                    fontSize: 96,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),

          //Zona 3: botón de - (pulsable)
          Expanded(
            flex: 3,
            child: InkWell(
              onTap: alRestar,
              child: Container(
                color: colorClaro,
                child: const Center(
                  child: Icon(Icons.remove, size: 64, color: Colors.white),
                ),
              ),
            ),
          ),
          //Zona 4: franja de abajo con el nombre del equipo
          Container(
            height: 32,
            color: colorOscuro,
            child: Center(
              child: Text(
                nombre,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
