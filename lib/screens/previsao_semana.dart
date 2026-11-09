// import 'package:flutter/material.dart';
// import 'package:projeto_tempo/widgets/titulo_secao.dart';

// class PrevisaoSemanaScreen extends StatelessWidget {
//   const new({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Previsão da semana')),
//       body: ListView(
//         padding: EdgeInsets.all(16),
//         children: [
//           TituloSecao(titulo: 'Faixa de temperatura'),
//           Row(
//             children: [
//               Expanded(
//                 child: Container(
//                   height: 60,
//                   color: Colors.amberAccent.shade100,
//                   child: Center(child: Text('18°C')),
//                 ),
//               ),
//               Flexible(
//                 flex: 2,
//                 child: Container(
//                   color: Colors.orangeAccent.shade100,
//                   height: 60,
//                   child: Center(child: Text('26°C')),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   color: Colors.yellowAccent.shade100,
//                   height: 60,
//                   child: Center(child: Text('31°C')),
//                 ),
//               ),
//             ],
//           ),
//           Divider(),

//           TituloSecao(titulo: 'Resumo do dia'),
//           Container(
//             height: 200,
//             color: Colors.blueAccent.shade100,
//             child: (Column(
//               children: [
//                 Expanded(
//                   child: Container(
//                     color: Colors.brown.shade100,
//                     child: Center(child: Text('Manhã: 20°C')),
//                   ),
//                 ),
//                 Flexible(
//                   flex: 2,
//                   child: Container(
//                     color: Colors.teal.shade100,
//                     child: Text('Tarde: 29°C'),
//                   ),
//                 ),
//               ],
//             )),
//           ),
//           Divider(),
//           TituloSecao(titulo: 'Próximos dias'),
//           Row(
//             children: [
//               Expanded(flex: 2, child: Center(child: Text('Sexta'))),
//               Icon(Icons.favorite),
//               Expanded(child: Text('TP: 1°C')),
//               Expanded(child: Text('TM: 25°C')),
//             ],
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(vertical: 8.0),
//             child: Row(
//               children: [
//                 Expanded(flex: 2, child: Center(child: Text('Sabado'))),
//                 Icon(Icons.umbrella),
//                 Expanded(child: Text('TP: 10°C')),
//                 Expanded(child: Text('TM: 20°C')),
//               ],
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(vertical: 8),
//             child: Row(
//               children: [
//                 Expanded(flex: 2, child: Center(child: Text('Domingo'))),
//                 Icon(Icons.umbrella),
//                 Expanded(child: Text('TP: 12°C')),
//                 Expanded(child: Text('TM: 27°C')),
//               ],
//             ),
//           ),

//           Padding(
//             padding: EdgeInsets.symmetric(vertical: 8),
//             child: Row(
//               children: [
//                 Expanded(flex: 2, child: Center(child: Text('Segunda'))),
//                 Icon(Icons.favorite),
//                 Expanded(child: Text('TP: 2°C')),
//                 Expanded(child: Text('TM: 15°C')),
//               ],
//             ),
//           ),

//           Padding(
//             padding: EdgeInsets.symmetric(vertical: 8),
//             child: Row(
//               children: [
//                 Expanded(flex: 2, child: Center(child: Text('Terça'))),
//                 Icon(Icons.umbrella),
//                 Expanded(child: Text('TP: 15°C')),
//                 Expanded(child: Text('TM: 28°C')),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:projeto_tempo/models/clima.dart';
import 'package:projeto_tempo/widgets/titulo_secao.dart';

class PrevisaoSemanaScreen extends StatelessWidget {
  final Clima clima;

  const PrevisaoSemanaScreen({super.key, required this.clima});

  @override
  Widget build(BuildContext context) {
    // Lista declarada de forma limpa dentro do build
    final diasSemana = [
      {
        'dia': 'Sexta-feira',
        'icone': Icons.wb_sunny,
        'tp': '${(clima.temperaturaMinima - 2).toInt()}°C',
        'tm': '${(clima.temperaturaMaxima + 1).toInt()}°C',
        'condicao': 'Sol com poucas nuvens',
      },
      {
        'dia': 'Sábado',
        'icone': Icons.umbrella,
        'tp': '${clima.temperaturaMinima.toInt()}°C',
        'tm': '${(clima.temperaturaMaxima - 2).toInt()}°C',
        'condicao': 'Chuva isolada',
      },
      {
        'dia': 'Domingo',
        'icone': Icons.wb_sunny,
        'tp': '${(clima.temperaturaMinima + 2).toInt()}°C',
        'tm': '${(clima.temperaturaMaxima + 3).toInt()}°C',
        'condicao': 'Ensolarado',
      },
      {
        'dia': 'Segunda-feira',
        'icone': Icons.cloud,
        'tp': '${(clima.temperaturaMinima - 1).toInt()}°C',
        'tm': '${(clima.temperaturaMaxima - 1).toInt()}°C',
        'condicao': 'Nublado',
      },
      {
        'dia': 'Terça-feira',
        'icone': Icons.wb_sunny,
        'tp': '${(clima.temperaturaMinima + 1).toInt()}°C',
        'tm': '${(clima.temperaturaMaxima + 2).toInt()}°C',
        'condicao': 'Parcialmente nublado',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Previsão: ${clima.cidade}'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Cabeçalho dinâmico da região
          Card(
            elevation: 2,
            color: Colors.deepPurple.shade50,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.location_city,
                    size: 40,
                    color: Colors.deepPurple,
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        clima.cidade,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Temp. Atual: ${clima.temperaturaAtual.toInt()}°C | Umidade: ${clima.umidade}%',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Resumo Térmico Diário
          const TituloSecao(titulo: 'Resumo Térmico Diário'),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Card(
                  color: Colors.amber.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        const Text(
                          'Manhã',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${(clima.temperaturaAtual - 3).toInt()}°C',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: Colors.orange.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        const Text(
                          'Tarde',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${clima.temperaturaMaxima.toInt()}°C',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(height: 32),

          // Próximos Dias
          const TituloSecao(titulo: 'Próximos Dias'),
          const SizedBox(height: 8),

          ...diasSemana.map(
            (diaInfo) => Card(
              elevation: 1,
              margin: const EdgeInsets.only(bottom: 8),
              child: ListTile(
                leading: Icon(
                  diaInfo['icone'] as IconData,
                  color: Colors.blueAccent,
                  size: 30,
                ),
                title: Text(
                  diaInfo['dia'] as String,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(diaInfo['condicao'] as String),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Mín: ${diaInfo['tp']}',
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Máx: ${diaInfo['tm']}',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
