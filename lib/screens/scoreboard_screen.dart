import 'package:flutter/material.dart';
import 'package:marcador/widgets/reset_button.dart';
import 'package:marcador/widgets/score_pill.dart';
import 'package:marcador/widgets/scoreboard_header.dart';

import '../widgets/team_panel.dart';
import '../themes/app_theme.dart';

//Pantalla principal del marcador. Es StatefulWidget porque los puntos
//cambian mientras la aplicación se usa y la pantalla debe redibujarse
class ScoreboardScreen extends StatefulWidget {
  const ScoreboardScreen({super.key});

  @override
  State<ScoreboardScreen> createState() => _ScoreboardScreenState();
}

//Estado de la pantalla: aquíi estan los puntos y se dibuja toda la interfaz
//Los widgets hijos solo muestran datos y avisan de las pulsaciones
//Esta clase es la que decide que hacen las funciones alSumar, alRestar y alReiniciar
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
        //Columna principal para organizar el contenido vertical
        child: Column(
          children: [
            //Cabecera: icono + titulo 'MARCADOR'
            const ScoreboardHeader(),
            //Separación entre la cabecera y la capsula
            const SizedBox(height: 40),
            //Pildora superior que indica los valores de cada equipo en el marcador
            //Sincronizada con las puntuaciones de los paneles
            ScorePill(
              colorAzul: AppTheme.azul,
              colorRojo: AppTheme.rojo,
              colorGris: AppTheme.gris,
              puntosLocal: puntosLocal,
              puntosVisitante: puntosVisitante,
            ),
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
                      colorClaro:
                          AppTheme.azul, //Usamos el color azul del tema creado
                      colorOscuro: AppTheme.azulOscuro,
                      puntos: puntosLocal, //Mostramos el resultado de la variable puntos
                      //Boton +: suma 1 y avisa a Flutter con setState para redibujar
                      alSumar: () {
                        //Al darle al botón de suma, se aumenta en 1 la puntuación
                        setState(() {
                          puntosLocal++; //sumamos 1 a la variable de puntos local
                        });
                      },
                      //Boton -: resta 1 y avisa a Flutter con setState para redibujar
                      alRestar: () {
                        setState(() {
                          if (puntosLocal > 0) {
                            //Validamos que los puntos sean mayores de 0 para poder restar, evitando negativos
                            puntosLocal--;
                          }
                        });
                      },
                    ),
                  ),
                  //Separación horizontal entre paneles
                  const SizedBox(width: 16),
                  //Panel del equipo visita (mismo widget que el anterior, distintos datos)
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
            //Separación entre el panel y el boton de reset
            const SizedBox(height: 20),
            //Boton de RESET: la pantalla le pasa la función que debe ejecutar al pulsarse
            ResetButton(
              colorGris: AppTheme.gris,
              //Invoca al metodo alReiniciar
              alReiniciar: () {
                //Cambia el estado de las variables a 0
                setState(() {
                  puntosLocal = 0; 
                  puntosVisitante = 0;
                });
              },
            ),
            //Separación del botón con el borde inferior
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
