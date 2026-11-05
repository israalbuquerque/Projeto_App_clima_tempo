// // This is a basic Flutter widget test.
// //
// // To perform an interaction with a widget in your test, use the WidgetTester
// // utility in the flutter_test package. For example, you can send tap and scroll
// // gestures. You can also use WidgetTester to find child widgets in the widget
// // tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:projeto_tempo/main.dart';

// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const MyApp());

//     // Verify that our counter starts at 0.
//     expect(find.text('0'), findsOneWidget);
//     expect(find.text('1'), findsNothing);

//     // Tap the '+' icon and trigger a frame.
//     await tester.tap(find.byIcon(Icons.add));
//     await tester.pump();

//     // Verify that our counter has incremented.
//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);
//   });
// }

// import 'package:flutter/material.dart';
// import 'package:teste/models/clima.dart';
// import 'package:teste/screens/ver_clima.dart';
// import 'package:teste/screens/widgets_conteudo.dart';
// import 'package:teste/screens/widgets_layout.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
//       home: ListContents(),
//     );
//   }
// }

// class ListContents extends StatelessWidget {
//   final List<CatalogoItem> secoes = [
//     CatalogoItem(
//       titulo: 'Widgets de conteudo',
//       icone: Icons.text_fields,
//       descricao: 'Exemplos de Widgets de Conteudo feitos na aula 1',
//       destino: WidgetsConteudo(),
//     ),

//     CatalogoItem(
//       titulo: 'Widgets de Layout',
//       icone: Icons.view_agenda,
//       descricao: 'Exemplos de Widgets de Layout feitos na aula 2',
//       destino: WidgetsLayout(),
//     ),

//     CatalogoItem(
//       titulo: 'Clima de São Paulo',
//       icone: Icons.cloud,
//       descricao: 'Clique para ver o clima de São Paulo',
//       destino: VerClima(
//         clima: Clima(
//           cidade: 'São Paulo',
//           temperaturaAtual: 31,
//           temperaturaMinima: 24,
//           temperaturaMaxima: 33,
//           umidade: 65,
//           chanceChuva: 30,
//         ),
//       ),
//     ),

//     CatalogoItem(
//       titulo: 'Clima do Rio de Janeiro',
//       icone: Icons.wb_sunny,
//       descricao: 'Clique para ver o clima deo Rio de Janeiro',
//       destino: VerClima(
//         clima: Clima(
//           cidade: 'Rio de Janeiro',
//           temperaturaAtual: 33,
//           temperaturaMinima: 25,
//           temperaturaMaxima: 35,
//           umidade: 78,
//           chanceChuva: 40,
//         ),
//       ),
//     ),
//   ];
//   new({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Home')),
//       body: GridView.count(
//         crossAxisCount: 2,
//         padding: EdgeInsets.all(16),
//         crossAxisSpacing: 16,
//         childAspectRatio: 0.85,
//         children: [
//           ...secoes
//               .map(
//                 (item) => GestureDetector(
//                   onTap: () => Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (_) => item.destino),
//                   ),
//                   child: Card(
//                     elevation: 4,
//                     child: Padding(
//                       padding: EdgeInsets.all(12),
//                       child: Column(
//                         children: [
//                           Icon(item.icone, size: 48, color: Colors.blue),
//                           Text(
//                             item.titulo,
//                             textAlign: TextAlign.center,
//                             maxLines: 1,
//                             overflow: TextOverflow.ellipsis,
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                           Text(
//                             item.descricao,
//                             textAlign: TextAlign.center,
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                             style: TextStyle(fontSize: 12, color: Colors.grey),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               )
//               .toList(),
//         ],
//       ),
//     );
//   }
// }

// class CatalogoItem {
//   final String titulo;
//   final IconData icone;
//   final String descricao;
//   final Widget destino;

//   CatalogoItem({
//     required this.titulo,
//     required this.icone,
//     required this.descricao,
//     required this.destino,
//   });
// }
