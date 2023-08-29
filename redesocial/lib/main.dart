import 'package:flutter/material.dart';
import 'views/pages/signPage.dart';
import 'views/pages/loginPage.dart';
import 'models/conta.dart';
import 'views/pages/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.purple,
          ),
          elevatedButtonTheme: const ElevatedButtonThemeData(
              style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber),
            foregroundColor: MaterialStatePropertyAll(Colors.black),
          )),
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: const TextStyle(
              color: Colors.amber,
            ),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          )),
      home: RedeSocial(),
    );
  }
}

class RedeSocial extends StatefulWidget {
  @override
  State<RedeSocial> createState() => _RedeSocialState();
}

class _RedeSocialState extends State<RedeSocial> {
  List<Conta> _contas = [
    Conta(nome: "Caua Cristian", senha: "12345", email: "caua"),
  ];
  bool temLogin = false;
  Conta? contaAtual;

  void _onRegister(String nome, String email, String senha) {
    final Conta newConta = Conta(
      nome: nome,
      senha: senha,
      email: email,
    );
    setState(() {
      _contas.add(newConta);
    });
    print('Contas agora: ${_contas.length}');
    Navigator.of(context).pop();
  }

  _openSign() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignPage(
            onRegister: _onRegister,
          ),
        ));
  }

  _openLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(onLogin: _onLogin, onSign: _openSign),
      ),
    );
  }

  _onLogin(
    TextEditingController emailController,
    TextEditingController senhaController,
  ) {
    for (int i = 0; i < _contas.length; i++) {
      if (emailController.text.toString() == _contas[i].email.toString() ||
          senhaController.text.toString() == _contas[i].senha.toString()) {
        setState(() {
          temLogin = true;
          contaAtual = _contas[i];
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return temLogin
        ? HomePage(
            contaPrincipal: contaAtual as Conta,
          )
        : LoginPage(onLogin: _onLogin, onSign: _openSign);
  }
}
