import 'package:flutter/material.dart';
import 'package:projeto_tempo/widgets/titulo_secao.dart';

class ClimaAtuaScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Clima Atual')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: 'Cidade atual'),
          Container(
            color: Colors.lightBlue.shade100,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'Santo André',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text(
                  '20/10/2026 - Terça-feira',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),

          Divider(),
          TituloSecao(titulo: 'Temperatura'),
          Container(
            child: Center(
              child: Text(
                '26°C',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                'Sensação térmica: 28°C',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: 8),

          Divider(),
          TituloSecao(titulo: 'Condição do tempo'),
          Image.network(
            'https://th.bing.com/th/id/OIP.HXwq5DFB9MCkq7TFjL4ZQwHaFk?w=474&h=356&r=0&pid=CanonicalCanvas',
            height: 200,
          ),

          Divider(),
          TituloSecao(titulo: 'Detalhes'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.water_drop, color: Colors.blue),
              Icon(Icons.air, color: Colors.blue),
              Icon(Icons.umbrella, color: Colors.blue),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text('65%'), Text('12km/h'), Text('30%')],
            ),
          ),

          Divider(),
          TituloSecao(titulo: 'Atualização'),
          Container(
            child: Center(
              child: ElevatedButton(onPressed: () {}, child: Text('Atualizar')),
            ),
          ),
          SizedBox(height: 16),

          Container(
            height: 80,
            color: Colors.grey.shade200,
            alignment: Alignment.bottomRight,
            child: Text('Última atualização: 14:30'),
          ),
        ],
      ),
    );
  }
}
