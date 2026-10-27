// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:projeto_tempo/screens/clima_atual.dart';
// import 'package:projeto_tempo/screens/detalhes_avancados.dart';
// import 'package:projeto_tempo/screens/previsao_semana.dart';
// import 'package:projeto_tempo/widgets/titulo_secao.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const new({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Clima App')),
//       body: Column(
//         children: [
//           ElevatedButton(
//             onPressed: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => ClimaAtuaScreen()),
//             ),
//             child: Text('Clima Atual'),
//           ),
//           ElevatedButton(
//             onPressed: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => PrevisaoSemanaScreen()),
//             ),
//             child: Text('Previsão da Semana'),
//           ),

//           ElevatedButton(
//             onPressed: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => DetalhesAvancadosScreen()),
//             ),
//             child: Text('Detalhes avançados'),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:projeto_tempo/screens/detalhes_avancados.dart';
import 'package:projeto_tempo/widgets/titulo_secao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clima App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class CidadeItem {
  final String nome;
  final String tempAtual;
  final String minMax;
  final String umiVentChu;
  final IconData icone;

  CidadeItem({
    required this.nome,
    required this.tempAtual,
    required this.minMax,
    required this.umiVentChu,
    required this.icone,
  });
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CidadeItem> outrasCidades = [
      CidadeItem(
        nome: 'São Bernardo do Campo',
        tempAtual: '24°C',
        minMax: 'Min: 17°C | Max: 26°C',
        umiVentChu: 'Umi: 70% | Vent: 10km/h | Chuva: 10%',
        icone: Icons.wb_sunny,
      ),
      CidadeItem(
        nome: 'São Paulo',
        tempAtual: '22°C',
        minMax: 'Min: 16°C | Max: 25°C',
        umiVentChu: 'Umi: 75% | Vent: 14km/h | Chuva: 40%',
        icone: Icons.umbrella,
      ),
      CidadeItem(
        nome: 'Mauá',
        tempAtual: '23°C',
        minMax: 'Min: 15°C | Max: 27°C',
        umiVentChu: 'Umi: 68% | Vent: 9km/h | Chuva: 20%',
        icone: Icons.cloud,
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Clima App - Home'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Cidade Principal (Destaque)
          const TituloSecao(titulo: 'Cidade Principal'),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const DetalhesAvancadosScreen(),
                ),
              );
            },
            child: Card(
              elevation: 4,
              color: Colors.deepPurple.shade50,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Santo André',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Min: 18°C | Max: 29°C',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.wb_sunny, size: 48, color: Colors.orange),
                        Text(
                          '26°C',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text('Umi: 65% | Vento: 12km/h | % Chuva: 30%'),
                    const SizedBox(height: 8),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Toque para ver mais >',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),
          const Divider(),
          const TituloSecao(titulo: 'Outras Cidades'),
          const SizedBox(height: 8),

          // Lista de outras cidades em formato de Cards
          ...outrasCidades.map(
            (cidade) => Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Card(
                elevation: 2,
                child: ListTile(
                  leading: Icon(cidade.icone, size: 36, color: Colors.blue),
                  title: Text(
                    cidade.nome,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cidade.minMax),
                      Text(
                        cidade.umiVentChu,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  trailing: Text(
                    cidade.tempAtual,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const DetalhesAvancadosScreen(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
