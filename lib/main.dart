import 'package:contador/util.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Contador());
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int qt = 0;
  bool get vazio => qt == 0;
  bool get cheio => qt == 20;

  incrementar() {
    setState(() {
      qt++;
    });
  }

  decrementar() {
    setState(() {
      qt--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: paginaPrincipal(),
    );
  }

  paginaPrincipal() {
    return Scaffold(
      body: Container(
        decoration: Util().configuraFundo('pub.jpg'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Util().criaTexto(cheio ? 'LOTADO' : 'Pode entrar', 30,
                cheio ? Colors.red : Colors.white),
            Padding(
              padding: EdgeInsets.all(65),
              child: Util().criaTexto('$qt', 100, Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Util().criaBotao(
                    'Saiu',
                    20,
                    Colors.black,
                    vazio ? null : decrementar,
                    vazio ? Colors.white.withOpacity(0.3) : Colors.white),
                const SizedBox(width: 35),
                Util().criaBotao(
                    'Entrou',
                    20,
                    Colors.black,
                    cheio ? null : incrementar,
                    cheio ? Colors.white.withOpacity(0.3) : Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }
}
