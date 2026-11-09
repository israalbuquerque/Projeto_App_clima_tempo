// import 'package:flutter/material.dart';
// import 'package:projeto_tempo/models/clima.dart';
// import 'package:projeto_tempo/screens/previsao_semana.dart';
// import 'package:projeto_tempo/widgets/titulo_secao.dart';

// class DetalhesAvancadosScreen extends StatelessWidget {
//   final Clima clima;
//   const DetalhesAvancadosScreen({super.key, required this.clima});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Detalhes Avançados')),
//       body: ListView(
//         padding: const EdgeInsets.all(16),
//         children: [
//           // a) Condição do tempo (Stack com imagem de fundo)
//           const TituloSecao(titulo: 'Condição do tempo'),
//           const SizedBox(height: 8),
//           Card(
//             clipBehavior: Clip.antiAlias,
//             elevation: 4,
//             child: Stack(
//               children: [
//                 Image.network(
//                   'https://images.unsplash.com/photo-1534088568595-a066fa41088a',
//                   height: 200,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                   // Adicionado para evitar travamentos caso a rede demore
//                   loadingBuilder: (context, child, loadingProgress) {
//                     if (loadingProgress == null) return child;
//                     return Container(
//                       height: 200,
//                       color: Colors.grey.shade300,
//                       child: const Center(child: CircularProgressIndicator()),
//                     );
//                   },
//                   errorBuilder: (context, error, stackTrace) {
//                     return Container(
//                       height: 200,
//                       color: Colors.blue.shade200,
//                       child: const Center(
//                         child: Icon(Icons.error, size: 40, color: Colors.white),
//                       ),
//                     );
//                   },
//                 ),
//                 Positioned(
//                   bottom: 16,
//                   left: 16,
//                   child: Text(
//                     clima.cidade,
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       shadows: [Shadow(blurRadius: 10, color: Colors.black)],
//                     ),
//                   ),
//                 ),
//                 const Positioned(
//                   top: 16,
//                   right: 16,
//                   child: Icon(Icons.wb_sunny, color: Colors.white, size: 36),
//                 ),
//               ],
//             ),
//           ),
//           const Divider(height: 32),

//           // Alertas
//           const TituloSecao(titulo: 'Alertas'),
//           const SizedBox(height: 8),
//           const Card(
//             child: ListTile(
//               leading: Icon(Icons.warning, color: Colors.red),
//               title: Text('Chuva Forte'),
//               subtitle: Text('Previsão para hoje, a partir das 18h'),
//               trailing: Icon(Icons.chevron_right),
//             ),
//           ),
//           const Divider(height: 32),

//           // Botão de navegação para a Previsão Semanal
//           ElevatedButton.icon(
//             style: ElevatedButton.styleFrom(
//               padding: const EdgeInsets.symmetric(vertical: 12),
//             ),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => const PrevisaoSemanaScreen()),
//               );
//             },
//             icon: const Icon(Icons.calendar_today),
//             label: const Text(
//               'Ver Previsão da Semana Completa',
//               style: TextStyle(fontSize: 16),
//             ),
//           ),
//           const Divider(height: 32),

//           // b) Indicadores (Substituído GridView pesado por Row/Column leves)
//           const TituloSecao(titulo: 'Indicadores'),
//           const SizedBox(height: 8),
//           Column(
//             children: [
//               Row(
//                 children: const [
//                   Expanded(
//                     child: CardIndicator(
//                       icon: Icons.wb_sunny,
//                       color: Colors.orange,
//                       value: '6',
//                       label: 'Índice UV',
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: CardIndicator(
//                       icon: Icons.compress,
//                       color: Colors.blue,
//                       value: '1013 hPa',
//                       label: 'Pressão',
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 10),
//               Row(
//                 children: const [
//                   Expanded(
//                     child: CardIndicator(
//                       icon: Icons.visibility,
//                       color: Colors.green,
//                       value: '10 km',
//                       label: 'Visibilidade',
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: CardIndicator(
//                       icon: Icons.wb_twilight,
//                       color: Colors.deepOrange,
//                       value: '05:30',
//                       label: 'Nascer do sol',
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Widget auxiliar otimizado para os cards de indicadores
// class CardIndicator extends StatelessWidget {
//   final IconData icon;
//   final Color color;
//   final String value;
//   final String label;

//   const CardIndicator({
//     super.key,
//     required this.icon,
//     required this.color,
//     required this.value,
//     required this.label,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 110,
//       child: Card(
//         margin: EdgeInsets.zero,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, size: 28, color: color),
//             const SizedBox(height: 6),
//             Text(
//               value,
//               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 2),
//             Text(
//               label,
//               style: const TextStyle(fontSize: 12, color: Colors.grey),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

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
import 'package:flutter/material.dart';
import 'package:projeto_tempo/models/clima.dart';
import 'package:projeto_tempo/screens/previsao_semana.dart';
import 'package:projeto_tempo/widgets/titulo_secao.dart';

class DetalhesAvancadosScreen extends StatelessWidget {
  final Clima clima;

  const DetalhesAvancadosScreen({super.key, required this.clima});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes: ${clima.cidade}'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // a) Condição do tempo (Stack com imagem de fundo e nome dinâmico)
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
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Text(
                    clima.cidade, // Nome dinâmico da cidade
                    style: const TextStyle(
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
                MaterialPageRoute(
                  builder: (_) => PrevisaoSemanaScreen(
                    clima: clima,
                  ), // Passa o clima da região atual adiante!
                ),
              );
            },
            icon: const Icon(Icons.calendar_today),
            label: const Text(
              'Ver Previsão da Semana Completa',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const Divider(height: 32),

          // b) Indicadores Dinâmicos puxando os dados do objeto Clima
          const TituloSecao(titulo: 'Indicadores'),
          const SizedBox(height: 8),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CardIndicator(
                      icon: Icons.thermostat,
                      color: Colors.orange,
                      value: '${clima.temperaturaAtual.toInt()}°C',
                      label: 'Temperatura Atual',
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CardIndicator(
                      icon: Icons.water_drop,
                      color: Colors.blue,
                      value: '${clima.umidade}%',
                      label: 'Umidade do Ar',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: CardIndicator(
                      icon: Icons.umbrella,
                      color: Colors.purple,
                      value: '${clima.chancechuva.toInt()}%',
                      label: 'Chance de Chuva',
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CardIndicator(
                      icon: Icons.compress,
                      color: Colors.green,
                      value:
                          '${clima.temperaturaMinima.toInt()}°C / ${clima.temperaturaMaxima.toInt()}°C',
                      label: 'Mín / Máx',
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
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
