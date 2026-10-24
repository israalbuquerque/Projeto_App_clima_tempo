import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projeto_tempo/screens/clima_atual.dart';
import 'package:projeto_tempo/screens/detalhes_avancados.dart';
import 'package:projeto_tempo/screens/previsao_semana.dart';
import 'package:projeto_tempo/widgets/titulo_secao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Clima App')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ClimaAtuaScreen()),
            ),
            child: Text('Clima Atual'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => PrevisaoSemanaScreen()),
            ),
            child: Text('Previsão da Semana'),
          ),

          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DetalhesAvancadosScreen()),
            ),
            child: Text('Detalhes avançados'),
          ),
        ],
      ),
    );
  }
}
