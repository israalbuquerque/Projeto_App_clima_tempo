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

// import 'package:flutter/material.dart';
// import 'package:projeto_tempo/models/clima.dart';
// import 'package:projeto_tempo/screens/detalhes_avancados.dart';
// import 'package:projeto_tempo/widgets/titulo_secao.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Clima App',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const HomeScreen(),
//     );
//   }
// }

// class CidadeItem {
//   final String nome;
//   final double tempAtual;
//   final double tempMinima;
//   final double tempMaxima;
//   final int umidade;
//   final double chanceChuva;
//   final double ventoVelocidade;
//   final IconData icone;

//   CidadeItem({
//     required this.nome,
//     required this.tempAtual,
//     required this.tempMinima,
//     required this.tempMaxima,
//     required this.umidade,
//     required this.chanceChuva,
//     required this.ventoVelocidade,
//     required this.icone,
//   });

//   String get minMax =>
//       'Min: ${tempMinima.toInt()}°C | Max: ${tempMaxima.toInt()}°C';
//   String get umiVentChu =>
//       'Umi: $umidade% | Vent: ${ventoVelocidade.toInt()}km/h | Chuva: ${chanceChuva.toInt()}%';
//   String get tempAtualFormatada => '${tempAtual.toInt()}°C';

//   // Gera o destino dinamicamente injetando o objeto Clima com os dados desta cidade
//   Widget get destino => DetalhesAvancadosScreen(
//     clima: Clima(
//       cidade: nome,
//       temperaturaAtual: tempAtual,
//       temperaturaMinima: tempMinima,
//       temperaturaMaxima: tempMaxima,
//       umidade: umidade,
//       chancechuva: chanceChuva,
//     ),
//   );
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Lista de Outras Cidades contendo São Bernardo do Campo, São Paulo e Mauá com seus parâmetros
//     final List<CidadeItem> outrasCidades = [
//       CidadeItem(
//         nome: 'São Bernardo do Campo',
//         tempAtual: 24,
//         tempMinima: 17,
//         tempMaxima: 26,
//         umidade: 70,
//         chanceChuva: 10,
//         ventoVelocidade: 10,
//         icone: Icons.wb_sunny,
//       ),
//       CidadeItem(
//         nome: 'São Paulo',
//         tempAtual: 22,
//         tempMinima: 16,
//         tempMaxima: 25,
//         umidade: 75,
//         chanceChuva: 40,
//         ventoVelocidade: 14,
//         icone: Icons.umbrella,
//       ),
//       CidadeItem(
//         nome: 'Mauá',
//         tempAtual: 23,
//         tempMinima: 15,
//         tempMaxima: 27,
//         umidade: 68,
//         chanceChuva: 20,
//         ventoVelocidade: 9,
//         icone: Icons.cloud,
//       ),
//     ];

//     return Scaffold(
//       appBar: AppBar(title: const Text('Clima App - Home'), centerTitle: true),
//       body: ListView(
//         padding: const EdgeInsets.all(16),
//         children: [
//           // Cidade Principal (Santo André em destaque)
//           const TituloSecao(titulo: 'Cidade Principal'),
//           const SizedBox(height: 8),
//           GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (_) => const DetalhesAvancadosScreen(
//                     clima: Clima(
//                       cidade: 'Santo André',
//                       temperaturaAtual: 26,
//                       temperaturaMinima: 18,
//                       temperaturaMaxima: 29,
//                       umidade: 65,
//                       chancechuva: 30,
//                     ),
//                   ),
//                 ),
//               );
//             },
//             child: Card(
//               elevation: 4,
//               color: Colors.deepPurple.shade50,
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: const [
//                         Text(
//                           'Santo André',
//                           style: TextStyle(
//                             fontSize: 22,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           'Min: 18°C | Max: 29°C',
//                           style: TextStyle(fontSize: 14, color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                     const Divider(),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: const [
//                         Icon(Icons.wb_sunny, size: 48, color: Colors.orange),
//                         Text(
//                           '26°C',
//                           style: TextStyle(
//                             fontSize: 40,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 8),
//                     const Text('Umi: 65% | Vento: 12km/h | % Chuva: 30%'),
//                     const SizedBox(height: 8),
//                     const Align(
//                       alignment: Alignment.centerRight,
//                       child: Text(
//                         'Toque para ver mais >',
//                         style: TextStyle(
//                           color: Colors.deepPurple,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),

//           const SizedBox(height: 20),
//           const Divider(),
//           const TituloSecao(titulo: 'Outras Cidades'),
//           const SizedBox(height: 8),

//           // Renderiza dinamicamente os cards de São Bernardo do Campo, São Paulo e Mauá
//           ...outrasCidades.map(
//             (cidade) => Padding(
//               padding: const EdgeInsets.only(bottom: 12.0),
//               child: Card(
//                 elevation: 2,
//                 child: ListTile(
//                   leading: Icon(cidade.icone, size: 36, color: Colors.blue),
//                   title: Text(
//                     cidade.nome,
//                     style: const TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   subtitle: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(cidade.minMax),
//                       Text(
//                         cidade.umiVentChu,
//                         style: const TextStyle(fontSize: 12),
//                       ),
//                     ],
//                   ),
//                   trailing: Text(
//                     cidade.tempAtualFormatada,
//                     style: const TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (_) => cidade.destino),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:projeto_tempo/models/clima.dart';
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

// ==========================================
// TELA DO CONTADOR
// ==========================================
class ContadorScreen extends StatefulWidget {
  const ContadorScreen({super.key});

  @override
  State<ContadorScreen> createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  int _contador = 0;

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tela de Contador'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Você pressionou o botão esta quantidade de vezes:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            Text(
              '$_contador',
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementar,
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CidadeItem {
  final String nome;
  final double tempAtual;
  final double tempMinima;
  final double tempMaxima;
  final int umidade;
  final double chanceChuva;
  final double ventoVelocidade;
  final IconData icone;

  CidadeItem({
    required this.nome,
    required this.tempAtual,
    required this.tempMinima,
    required this.tempMaxima,
    required this.umidade,
    required this.chanceChuva,
    required this.ventoVelocidade,
    required this.icone,
  });

  String get minMax =>
      'Min: ${tempMinima.toInt()}°C | Max: ${tempMaxima.toInt()}°C';
  String get umiVentChu =>
      'Umi: $umidade% | Vent: ${ventoVelocidade.toInt()}km/h | Chuva: ${chanceChuva.toInt()}%';
  String get tempAtualFormatada => '${tempAtual.toInt()}°C';

  Widget get destino => DetalhesAvancadosScreen(
    clima: Clima(
      cidade: nome,
      temperaturaAtual: tempAtual,
      temperaturaMinima: tempMinima,
      temperaturaMaxima: tempMaxima,
      umidade: umidade,
      chancechuva: chanceChuva,
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CidadeItem> outrasCidades = [
      CidadeItem(
        nome: 'São Bernardo do Campo',
        tempAtual: 24,
        tempMinima: 17,
        tempMaxima: 26,
        umidade: 70,
        chanceChuva: 10,
        ventoVelocidade: 10,
        icone: Icons.wb_sunny,
      ),
      CidadeItem(
        nome: 'São Paulo',
        tempAtual: 22,
        tempMinima: 16,
        tempMaxima: 25,
        umidade: 75,
        chanceChuva: 40,
        ventoVelocidade: 14,
        icone: Icons.umbrella,
      ),
      CidadeItem(
        nome: 'Mauá',
        tempAtual: 23,
        tempMinima: 15,
        tempMaxima: 27,
        umidade: 68,
        chanceChuva: 20,
        ventoVelocidade: 9,
        icone: Icons.cloud,
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Clima App - Home'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // ==========================================
          // CARD DE ACESSO RÁPIDO PARA O CONTADOR
          // ==========================================
          Card(
            color: Colors.deepPurple.shade100,
            elevation: 2,
            child: ListTile(
              leading: const Icon(
                Icons.ads_click,
                size: 36,
                color: Colors.deepPurple,
              ),
              title: const Text(
                'Ir para o Contador',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'Toque para abrir a página interativa de contagem',
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ContadorScreen()),
                );
              },
            ),
          ),
          const SizedBox(height: 16),

          // Cidade Principal (Santo André em destaque)
          const TituloSecao(titulo: 'Cidade Principal'),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const DetalhesAvancadosScreen(
                    clima: Clima(
                      cidade: 'Santo André',
                      temperaturaAtual: 26,
                      temperaturaMinima: 18,
                      temperaturaMaxima: 29,
                      umidade: 65,
                      chancechuva: 30,
                    ),
                  ),
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

          // Renderiza dinamicamente os cards de São Bernardo do Campo, São Paulo e Mauá
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
                    cidade.tempAtualFormatada,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => cidade.destino),
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
