import 'package:flutter/material.dart';

//Widget de la pantalla
class ScoreboardScreen extends StatefulWidget{
  const ScoreboardScreen({super.key});

  @override
  State<ScoreboardScreen> createState() => _ScoreboardScreenState();
}

class _ScoreboardScreenState extends State<ScoreboardScreen> {
  int puntosLocal = 0;
  int puntosVisitante = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Local: $puntosLocal'),
          ElevatedButton(onPressed: (){
            setState((){
              puntosLocal++;
            });
          },
          child: const Text('+'),
          ),
        ],
      ),
    );
  }

}