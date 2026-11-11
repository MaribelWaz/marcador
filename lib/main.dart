import 'package:flutter/material.dart';
import 'themes/app_theme.dart';


//Punto inicial: arrancar la aplicación
void main(){
  runApp(const MarcadorApp());
}

//Widget que configura el arranque, el tema y la pantalla de inicio
class MarcadorApp extends StatelessWidget{
  const MarcadorApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.tema,
      home: const ScoreboardScreen(),
    );
  }
}