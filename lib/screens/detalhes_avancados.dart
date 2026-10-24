import 'package:flutter/material.dart';
import 'package:projeto_tempo/widgets/titulo_secao.dart';

void main() => runApp(const DetalhesAvancadosScreen());

class DetalhesAvancadosScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes avançados')),
      body: ListView(
        padding: EdgeInsets.all(16),

        children: [
          TituloSecao(titulo: 'Seções da tela'),
          Card(
            child: Column(
              mainAxisSize: .min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.warning),
                  title: Text('Chuva Forte'),
                  subtitle: Text('Previsão para hoje, a partir das 18h'),
                  trailing: Icon(Icons.chevron_right),
                ),
                Row(
                  mainAxisAlignment: .end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('BUY TICKETS'),
                      onPressed: () {
                        /* ... */
                      },
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text('LISTEN'),
                      onPressed: () {
                        /* ... */
                      },
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: .min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.warning),
                  title: Text('Chuva Forte'),
                  subtitle: Text('Previsão para hoje, a partir das 18h'),
                  trailing: Icon(Icons.chevron_right),
                ),
                Row(
                  mainAxisAlignment: .end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('BUY TICKETS'),
                      onPressed: () {
                        /* ... */
                      },
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text('LISTEN'),
                      onPressed: () {
                        /* ... */
                      },
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          TituloSecao(titulo: 'Indicadores'),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Expanded(
          //       child: Column(
          //         children: const <Widget>[
          //           ListTile(leading: Icon(Icons.map), title: Text('Map')),
          //           ListTile(
          //             leading: Icon(Icons.photo_album),
          //             title: Text('Album'),
          //           ),
          //           ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
          //         ],
          //       ),
          //     ),

          //     Expanded(
          //       child: Column(
          //         children: const <Widget>[
          //           ListTile(leading: Icon(Icons.map), title: Text('Map')),
          //           ListTile(
          //             leading: Icon(Icons.photo_album),
          //             title: Text('Album'),
          //           ),
          //           ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: List.generate(4, (index) {
              return Center(
                child: Card(
                  color: Colors.amberAccent.shade100,
                  child: Text(
                    'UV',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
