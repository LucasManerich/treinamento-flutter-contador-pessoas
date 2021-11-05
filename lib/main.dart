import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppContadorPessoas());
}

class AppContadorPessoas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador Pessoas',
      home: ContadorPessoasView()
    );
  }
}

class ContadorPessoasView extends StatefulWidget {
  const ContadorPessoasView({ Key? key }) : super(key: key);

  @override
  _ContadorPessoasViewState createState() => _ContadorPessoasViewState();
}

class _ContadorPessoasViewState extends State<ContadorPessoasView> {

  int quantidade = 0;

  void incrementa() {
    setState(() {
      quantidade++;
    });
  }

  void decrementa() {
    setState(() {
      quantidade--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Contador de Pessoas"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(quantidade.toString(), style: const TextStyle(fontSize: 60)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: this.incrementa, child: const Text("+1")),
              const SizedBox(width: 15),
              ElevatedButton(onPressed: this.decrementa, child: const Text("-1"))
            ],
          )
        ],
      ),
    );
  }
}