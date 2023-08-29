import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignPage extends StatefulWidget {
  void Function(String, String, String) onRegister;
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController nomeController = TextEditingController();
  SignPage({required this.onRegister});

  @override
  State<SignPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignPage> {
  _onRegister() {
    widget.onRegister(
      widget.nomeController.text.toString(),
      widget.emailController.text.toString(),
      widget.senhaController.text.toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
      ),
      body: Center(
        child: Stack(children: [
          Container(
            width: double.infinity,
            height: 400,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(128, 192, 1, 255),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 10,
                  blurRadius: 15,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Cadastro",
                    style: TextStyle(fontSize: 28, color: Colors.amber),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 350,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 10,
                  blurRadius: 15,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  controller: widget.nomeController,
                  decoration: const InputDecoration(
                    label: Text("Nome"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: widget.emailController,
                  decoration: const InputDecoration(
                    label: Text("Email"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: widget.senhaController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    label: Text("Senha"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: _onRegister, child: const Text("Cadastrar-se")),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
