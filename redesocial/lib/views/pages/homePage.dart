import 'package:flutter/material.dart';
import 'package:redesocial/models/conta.dart';
import 'package:redesocial/views/components/Publicacao.dart';

class HomePage extends StatefulWidget {
  Conta contaPrincipal;
  HomePage({required this.contaPrincipal});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Conta sla = Conta(nome: "sla", senha: "", email: "");
    sla.publicacoes.add(Publicacao(descricao: "sla2"));
    widget.contaPrincipal.seguindo.add(sla);
    return Scaffold(
      appBar: AppBar(
        title: Text("MO3I Social"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(8),
            child: Column(
              children: [
                Text(widget.contaPrincipal.seguindo[0].nome),
                Container(
                  height: 300,
                ),
                Text(widget.contaPrincipal.seguindo[0].publicacoes[0].descricao)
              ],
            ),
          );
        },
      ),
    );
  }
}
