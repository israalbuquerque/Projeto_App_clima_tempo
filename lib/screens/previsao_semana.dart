import 'package:flutter/material.dart';
import 'package:projeto_tempo/widgets/titulo_secao.dart';

class PrevisaoSemanaScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Previsão da semana')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: 'Faixa de temperatura'),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.amberAccent.shade100,
                  child: Center(child: Text('18°C')),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.orangeAccent.shade100,
                  height: 60,
                  child: Center(child: Text('26°C')),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellowAccent.shade100,
                  height: 60,
                  child: Center(child: Text('31°C')),
                ),
              ),
            ],
          ),
          Divider(),

          TituloSecao(titulo: 'Resumo do dia'),
          Container(
            height: 200,
            color: Colors.blueAccent.shade100,
            child: (Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.brown.shade100,
                    child: Center(child: Text('Manhã: 20°C')),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.teal.shade100,
                    child: Text('Tarde: 29°C'),
                  ),
                ),
              ],
            )),
          ),
          Divider(),
          TituloSecao(titulo: 'Próximos dias'),
          Row(
            children: [
              Expanded(flex: 2, child: Center(child: Text('Sexta'))),
              Icon(Icons.favorite),
              Expanded(child: Text('TP: 1°C')),
              Expanded(child: Text('TM: 25°C')),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Expanded(flex: 2, child: Center(child: Text('Sabado'))),
                Icon(Icons.umbrella),
                Expanded(child: Text('TP: 10°C')),
                Expanded(child: Text('TM: 20°C')),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Center(child: Text('Domingo'))),
                Icon(Icons.umbrella),
                Expanded(child: Text('TP: 12°C')),
                Expanded(child: Text('TM: 27°C')),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Center(child: Text('Segunda'))),
                Icon(Icons.favorite),
                Expanded(child: Text('TP: 2°C')),
                Expanded(child: Text('TM: 15°C')),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Center(child: Text('Terça'))),
                Icon(Icons.umbrella),
                Expanded(child: Text('TP: 15°C')),
                Expanded(child: Text('TM: 28°C')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
