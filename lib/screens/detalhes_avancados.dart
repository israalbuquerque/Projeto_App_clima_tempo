// import 'package:exercicio_tempo/widgets/titulo_secao.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(const DetalhesAvancadosScreen());

// class DetalhesAvancadosScreen extends StatelessWidget {
//   const new({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Detalhes avançados')),
//       body: ListView(
//         padding: EdgeInsets.all(16),

//         children: [
//           TituloSecao(titulo: 'Seções da tela'),
//           Card(
//             child: Column(
//               mainAxisSize: .min,
//               children: <Widget>[
//                 const ListTile(
//                   leading: Icon(Icons.warning),
//                   title: Text('Chuva Forte'),
//                   subtitle: Text('Previsão para hoje, a partir das 18h'),
//                   trailing: Icon(Icons.chevron_right),
//                 ),
//                 Row(
//                   mainAxisAlignment: .end,
//                   children: <Widget>[
//                     TextButton(
//                       child: const Text('BUY TICKETS'),
//                       onPressed: () {
//                         /* ... */
//                       },
//                     ),
//                     const SizedBox(width: 8),
//                     TextButton(
//                       child: const Text('LISTEN'),
//                       onPressed: () {
//                         /* ... */
//                       },
//                     ),
//                     const SizedBox(width: 8),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Card(
//             child: Column(
//               mainAxisSize: .min,
//               children: <Widget>[
//                 const ListTile(
//                   leading: Icon(Icons.warning),
//                   title: Text('Chuva Forte'),
//                   subtitle: Text('Previsão para hoje, a partir das 18h'),
//                   trailing: Icon(Icons.chevron_right),
//                 ),
//                 Row(
//                   mainAxisAlignment: .end,
//                   children: <Widget>[
//                     TextButton(
//                       child: const Text('BUY TICKETS'),
//                       onPressed: () {
//                         /* ... */
//                       },
//                     ),
//                     const SizedBox(width: 8),
//                     TextButton(
//                       child: const Text('LISTEN'),
//                       onPressed: () {
//                         /* ... */
//                       },
//                     ),
//                     const SizedBox(width: 8),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Divider(),
//           TituloSecao(titulo: 'Indicadores'),
//           // Row(
//           //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           //   children: [
//           //     Expanded(
//           //       child: Column(
//           //         children: const <Widget>[
//           //           ListTile(leading: Icon(Icons.map), title: Text('Map')),
//           //           ListTile(
//           //             leading: Icon(Icons.photo_album),
//           //             title: Text('Album'),
//           //           ),
//           //           ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
//           //         ],
//           //       ),
//           //     ),

//           //     Expanded(
//           //       child: Column(
//           //         children: const <Widget>[
//           //           ListTile(leading: Icon(Icons.map), title: Text('Map')),
//           //           ListTile(
//           //             leading: Icon(Icons.photo_album),
//           //             title: Text('Album'),
//           //           ),
//           //           ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
//           //         ],
//           //       ),
//           //     ),
//           //   ],
//           // ),
//           GridView.count(
//             crossAxisCount: 2,
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//             children: List.generate(4, (index) {
//               return Center(
//                 child: Card(
//                   color: Colors.amberAccent.shade100,
//                   child: Text(
//                     'UV',
//                     style: Theme.of(context).textTheme.titleLarge,
//                   ),
//                 ),
//               );
//             }),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:projeto_tempo/widgets/titulo_secao.dart';

// void main() => runApp(const MaterialApp(home: DetalhesAvancadosScreen()));

// class DetalhesAvancadosScreen extends StatelessWidget {
//   const DetalhesAvancadosScreen({super.key}); // Corrigido o nome do construtor

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Detalhes avançados')),
//       body: ListView(
//         padding: const EdgeInsets.all(16),
//         children: [
//           const TituloSecao(titulo: 'Seções da tela'),
//           Card(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 const ListTile(
//                   leading: Icon(Icons.warning),
//                   title: Text('Chuva Forte'),
//                   subtitle: Text('Previsão para hoje, a partir das 18h'),
//                   trailing: Icon(Icons.chevron_right),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     TextButton(
//                       child: const Text('BUY TICKETS'),
//                       onPressed: () {},
//                     ),
//                     const SizedBox(width: 8),
//                     TextButton(child: const Text('LISTEN'), onPressed: () {}),
//                     const SizedBox(width: 8),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           const Divider(),

//           // b) Indicadores (GridView.count com 4 indicadores)
//           const TituloSecao(titulo: 'Indicadores'),
//           const SizedBox(height: 8),
//           GridView.count(
//             crossAxisCount: 2,
//             shrinkWrap:
//                 true, // Impede conflito de altura infinita dentro do ListView
//             physics: const NeverScrollableScrollPhysics(), // Desativa o scroll próprio do GridView
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//             children: const [
//               Card(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.wb_sunny, size: 32, color: Colors.orange),
//                     SizedBox(height: 8),
//                     Text(
//                       '6',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text('Índice UV'),
//                   ],
//                 ),
//               ),
//               Card(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.compress, size: 32, color: Colors.blue),
//                     SizedBox(height: 8),
//                     Text(
//                       '1013 hPa',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text('Pressão'),
//                   ],
//                 ),
//               ),
//               Card(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.visibility, size: 32, color: Colors.green),
//                     SizedBox(height: 8),
//                     Text(
//                       '10 km',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text('Visibilidade'),
//                   ],
//                 ),
//               ),
//               Card(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.wb_twilight, size: 32, color: Colors.deepOrange),
//                     SizedBox(height: 8),
//                     Text(
//                       '05:30',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text('Nascer do sol'),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           const Divider(),

//           // c) Condição do tempo (Stack com imagem de fundo e Positioned)
//           const TituloSecao(titulo: 'Condição do tempo'),
//           const SizedBox(height: 8),
//           Card(
//             clipBehavior: Clip.antiAlias,
//             child: Stack(
//               children: [
//                 Image.network(
//                   'https://images.unsplash.com/photo-1534088568595-a066fa41088a',
//                   height: 200,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//                 const Positioned(
//                   bottom: 16,
//                   left: 16,
//                   child: Text(
//                     '26°C',
//                     style: TextStyle(
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 const Positioned(
//                   top: 16,
//                   right: 16,
//                   child: Icon(Icons.wb_sunny, color: Colors.white, size: 32),
//                 ),
//               ],
//             ),
//           ),
//           const Divider(),

//           // d) Tags (Wrap com 5 Chips)
//           const TituloSecao(titulo: 'Tags'),
//           const SizedBox(height: 8),
//           Wrap(
//             spacing: 8,
//             runSpacing: 8,
//             children: const [
//               Chip(
//                 avatar: Icon(Icons.warning, color: Colors.red),
//                 label: Text('Chuva forte'),
//               ),
//               Chip(
//                 avatar: Icon(Icons.wb_sunny, color: Colors.amber),
//                 label: Text('UV alto'),
//               ),
//               Chip(label: Text('Vento moderado')),
//               Chip(label: Text('Umidade alta')),
//               Chip(label: Text('Frente fria')),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:projeto_tempo/screens/previsao_semana.dart';
import 'package:projeto_tempo/widgets/titulo_secao.dart';

class DetalhesAvancadosScreen extends StatelessWidget {
  const DetalhesAvancadosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalhes Avançados')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // a) Condição do tempo (Stack com imagem de fundo)
          const TituloSecao(titulo: 'Condição do tempo'),
          const SizedBox(height: 8),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 4,
            child: Stack(
              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1534088568595-a066fa41088a',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  // Adicionado para evitar travamentos caso a rede demore
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      height: 200,
                      color: Colors.grey.shade300,
                      child: const Center(child: CircularProgressIndicator()),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 200,
                      color: Colors.blue.shade200,
                      child: const Center(
                        child: Icon(Icons.error, size: 40, color: Colors.white),
                      ),
                    );
                  },
                ),
                const Positioned(
                  bottom: 16,
                  left: 16,
                  child: Text(
                    '26°C - Santo André',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [Shadow(blurRadius: 10, color: Colors.black)],
                    ),
                  ),
                ),
                const Positioned(
                  top: 16,
                  right: 16,
                  child: Icon(Icons.wb_sunny, color: Colors.white, size: 36),
                ),
              ],
            ),
          ),
          const Divider(height: 32),

          // Alertas
          const TituloSecao(titulo: 'Alertas'),
          const SizedBox(height: 8),
          const Card(
            child: ListTile(
              leading: Icon(Icons.warning, color: Colors.red),
              title: Text('Chuva Forte'),
              subtitle: Text('Previsão para hoje, a partir das 18h'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          const Divider(height: 32),

          // Botão de navegação para a Previsão Semanal
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PrevisaoSemanaScreen()),
              );
            },
            icon: const Icon(Icons.calendar_today),
            label: const Text(
              'Ver Previsão da Semana Completa',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const Divider(height: 32),

          // b) Indicadores (Substituído GridView pesado por Row/Column leves)
          const TituloSecao(titulo: 'Indicadores'),
          const SizedBox(height: 8),
          Column(
            children: [
              Row(
                children: const [
                  Expanded(
                    child: CardIndicator(
                      icon: Icons.wb_sunny,
                      color: Colors.orange,
                      value: '6',
                      label: 'Índice UV',
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CardIndicator(
                      icon: Icons.compress,
                      color: Colors.blue,
                      value: '1013 hPa',
                      label: 'Pressão',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Expanded(
                    child: CardIndicator(
                      icon: Icons.visibility,
                      color: Colors.green,
                      value: '10 km',
                      label: 'Visibilidade',
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CardIndicator(
                      icon: Icons.wb_twilight,
                      color: Colors.deepOrange,
                      value: '05:30',
                      label: 'Nascer do sol',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Widget auxiliar otimizado para os cards de indicadores
class CardIndicator extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String value;
  final String label;

  const CardIndicator({
    super.key,
    required this.icon,
    required this.color,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Card(
        margin: EdgeInsets.zero,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 28, color: color),
            const SizedBox(height: 6),
            Text(
              value,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

//## 3. README

// ### Tabela de Widgets Pesquisados

// | Widget | Para que serve (com suas palavras) | 2 propriedades usadas e o que fazem | Link da documentação |
// | :--- | :--- | :--- | :--- |
// | **GridView** | Organiza elementos numa grelha bidimensional (linhas e colunas), ideal para painéis e indicadores. | **crossAxisCount**: Define o número de colunas na grelha.<br>**shrinkWrap**: Ajusta a altura do GridView ao conteúdo para evitar erros de espaço infinito. | [Documentação GridView](https://api.flutter.dev/flutter/widgets/GridView-class.html) |
// | **Stack** | Permite sobrepor vários widgets uns em cima dos outros em formato de camadas (eixo Z). | **children**: Recebe a lista de widgets que ficam sobrepostos.<br>**alignment**: Define o alinhamento padrão dos filhos dentro da pilha. | [Documentação Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html) |
// | **Wrap** | Semelhante a uma Row, mas quebra automaticamente os itens para a linha seguinte quando acaba o espaço horizontal. | **spacing**: Define o espaço horizontal entre os elementos.<br>**runSpacing**: Define o espaço vertical entre as linhas geradas pela quebra. | [Documentação Wrap](https://api.flutter.dev/flutter/widgets/Wrap-class.html) |
// | **Chip** | Um componente compacto em formato de pílula usado para representar tags, filtros ou atributos com texto e ícones. | **label**: Define o texto principal exibido no chip.<br>**avatar**: Adiciona um pequeno widget (como um ícone) à esquerda do chip. | [Documentação Chip](https://api.flutter.dev/flutter/material/Chip-class.html) |

// ---

// ### Qual a diferença entre Row/Column e Stack? Quando usar cada um?

// > **Row/Column** organizam os elementos de forma linear (sequencial, lado a lado ou em coluna), sendo ideais para estruturas de fluxo ordenado. O **Stack** sobrepõe os elementos em camadas uns sobre os outros, sendo indicado quando precisa de colocar elementos flutuantes (como textos ou ícones) em cima de imagens ou fundos.
