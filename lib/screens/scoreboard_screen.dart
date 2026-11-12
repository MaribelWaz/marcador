import 'package:flutter/material.dart';

import '../widgets/team_panel.dart';
import '../themes/app_theme.dart';

//Widget de la pantalla
class ScoreboardScreen extends StatefulWidget {
  const ScoreboardScreen({super.key});

  @override
  State<ScoreboardScreen> createState() => _ScoreboardScreenState();
}

class _ScoreboardScreenState extends State<ScoreboardScreen> {
  int puntosLocal = 0;
  int puntosVisitante = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: TeamPanel(
                        nombre: 'EQUIPO LOCAL',
                        colorClaro: AppTheme.azul,
                        colorOscuro: AppTheme.azulOscuro,
                        puntos: puntosLocal,
                        alSumar: () {
                          setState(() {
                            puntosLocal++;
                          });
                        },
                        alRestar: () {
                          setState(() {
                            if (puntosLocal > 0) {
                              puntosLocal--;
                            }
                          });
                        },
                      ),
                    
                  ),
                  const SizedBox(width: 16),
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
