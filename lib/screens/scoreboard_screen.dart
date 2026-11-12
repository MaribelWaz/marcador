import 'package:flutter/material.dart';
import 'package:marcador/widgets/score_pill.dart';
import 'package:marcador/widgets/scoreboard_header.dart';

import '../widgets/team_panel.dart';
import '../themes/app_theme.dart';

//Widget de la pantalla
class ScoreboardScreen extends StatefulWidget {
  const ScoreboardScreen({super.key});

  @override
  State<ScoreboardScreen> createState() => _ScoreboardScreenState();
}

class _ScoreboardScreenState extends State<ScoreboardScreen> {
  //Variables enteras para almacenar los puntos
  int puntosLocal = 0; //Equipo local
  int puntosVisitante = 0; //Equipo visita

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Cuerpo con un padding (espacio) de 16 por todos los lados
      body: Padding(
        padding: const EdgeInsets.all(16),
        //Columna para organizar el contenido vertical
        child: Column(
          children: [
            //Widget que monta la cabecera de la aplicación
            const ScoreboardHeader(),
            //Separación entre la cabecera y la capsula 
            const SizedBox(height: 40),
            //Pildora que indica los valores de cada equipo en el marcador
            ScorePill(colorAzul: AppTheme.azul, colorRojo: AppTheme.rojo, puntosLocal: puntosLocal, puntosVisitante: puntosVisitante),
            const SizedBox(height: 25),
            //Expandimos el contenido para que ocupe todo el alto posible
            Expanded(
              //Usamos Row para organizar los elementos en horizontal
              child: Row(
                children: [
                  //Usamos de nuevo expanded para que los paneles lleguen hasta abajo, el maximo que les permitan los otros elementos
                  Expanded(
                    //Creamos el primer widget para el panel azul del equipo local
                      child: TeamPanel(
                        nombre: 'EQUIPO LOCAL', //Asignamos el nombre
                        colorClaro: AppTheme.azul, //Usamos el color azul del tema creado 
                        colorOscuro: AppTheme.azulOscuro,
                        puntos: puntosLocal, //Mostramos el resultado de la variable puntos
                        alSumar: () { //Al darle al botón de suma, se aumenta en 1 la puntuación
                          setState(() {
                            puntosLocal++; //sumamos 1 a la variable de puntos local
                          });
                        },
                        alRestar: () { //Al darle al botón de resta, se disminuye en 1 la puntuación
                          setState(() {
                            if (puntosLocal > 0) { //Validamos que los puntos sean mayores de 0 para poder restar, evitando negativos
                              puntosLocal--;
                            }
                          });
                        },
                      ),
                    
                  ),
                  //Separación horizontal entre paneles
                  const SizedBox(width: 16),
                  //Panel del equipo visita (mismo proceso que el anterior)
                  Expanded(
        
                      child: TeamPanel(
                        nombre: 'EQUIPO VISITA',
                        colorClaro: AppTheme.rojo,
                        colorOscuro: AppTheme.rojoOscuro,
                        puntos: puntosVisitante,
                        alSumar: () {
                          setState(() {
                            puntosVisitante++;
                          });
                        },
                        alRestar: () {
                          setState(() {
                            if (puntosVisitante > 0) {
                              puntosVisitante--;
                            }
                          });
                        },
                      ),
                  
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
