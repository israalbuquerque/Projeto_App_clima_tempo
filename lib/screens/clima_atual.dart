// import 'package:flutter/material.dart';
// import 'package:projeto_tempo/widgets/titulo_secao.dart';

// class ClimaAtuaScreen extends StatelessWidget {
//   const new({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Clima Atual')),
//       body: ListView(
//         padding: EdgeInsets.all(16),
//         children: [
//           TituloSecao(titulo: 'Cidade atual'),
//           Container(
//             color: Colors.lightBlue.shade100,
//             padding: EdgeInsets.all(20),
//             child: Column(
//               children: [
//                 Text(
//                   'Santo André',
//                   style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   '20/10/2026 - Terça-feira',
//                   style: TextStyle(fontSize: 16),
//                 ),
//               ],
//             ),
//           ),

//           Divider(),
//           TituloSecao(titulo: 'Temperatura'),
//           Container(
//             child: Center(
//               child: Text(
//                 '26°C',
//                 style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//           Container(
//             child: Center(
//               child: Text(
//                 'Sensação térmica: 28°C',
//                 style: TextStyle(fontSize: 16),
//               ),
//             ),
//           ),
//           SizedBox(height: 8),

//           Divider(),
//           TituloSecao(titulo: 'Condição do tempo'),
//           Image.network(
//             'https://th.bing.com/th/id/OIP.HXwq5DFB9MCkq7TFjL4ZQwHaFk?w=474&h=356&r=0&pid=CanonicalCanvas',
//             height: 200,
//           ),

//           Divider(),
//           TituloSecao(titulo: 'Detalhes'),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Icon(Icons.water_drop, color: Colors.blue),
//               Icon(Icons.air, color: Colors.blue),
//               Icon(Icons.umbrella, color: Colors.blue),
//             ],
//           ),
//           Container(
//             padding: EdgeInsets.only(top: 8),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [Text('65%'), Text('12km/h'), Text('30%')],
//             ),
//           ),

//           Divider(),
//           TituloSecao(titulo: 'Atualização'),
//           Container(
//             child: Center(
//               child: ElevatedButton(onPressed: () {}, child: Text('Atualizar')),
//             ),
//           ),
//           SizedBox(height: 16),

//           Container(
//             height: 80,
//             color: Colors.grey.shade200,
//             alignment: Alignment.bottomRight,
//             child: Text('Última atualização: 14:30'),
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
