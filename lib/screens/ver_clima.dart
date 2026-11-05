import 'package:flutter/material.dart';
import 'package:projeto_tempo/models/clima.dart';
import 'package:projeto_tempo/widgets/titulo_secao.dart';

class VerClima extends StatelessWidget {
  final Clima clima;
  const VerClima({super.key, required this.clima});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Previsão do tempo')),

      body: Center(
        child: Column(
          children: [
            TituloSecao(titulo: 'Infoemacões sobre o clima de ${clima.cidade}'),
            SizedBox(height: 20),
            Text('Temperatura atual: ${clima.temperaturaAtual}'),
            Text('Temperatura minima: ${clima.temperaturaMinima}'),
            Text('Temperatura maxima: ${clima.temperaturaMaxima}'),
            Text('Umidade: ${clima.umidade}'),
            Text('Chance de chuva: ${clima.chancechuva}'),
          ],
        ),
      ),
    );
  }
}
