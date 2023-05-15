import 'package:flutter/material.dart';
import 'package:meu_app/pages/telainicial.dart';
import 'package:meu_app/pages/telamapa.dart';


class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela Inicial',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const TelaInicial(),
      routes: {
        TelaLogin.routeName: (ctx) => const TelaLogin(),
        TelaMapa.routeName: (ctx) => TelaMapa()
      },
    );
  }
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Inicial'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('LOGIN'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/mapa');
              },
              child: const Text('MAPA'),
            ),
          ],
        ),
      ),
    );
  }
}