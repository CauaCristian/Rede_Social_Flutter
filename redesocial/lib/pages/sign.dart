import 'package:flutter/material.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
      ),
      body: Center(
        child: Stack(
          children: [
          Container(
              width: double.infinity,
              height: 400,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromARGB(128, 192, 1, 255),
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
                    Text("Cadastro",style: TextStyle(fontSize: 28,color: Colors.amber),),
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
                  const TextField(
                    decoration: InputDecoration(
                      label: Text("Nome"),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const TextField(
                    decoration: InputDecoration(
                      label: Text("Email"),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text("Senha"),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: const Text("Cadastrar-se")),
                  ],
              ),
            ),
        ]),
      ),
    );
  }
}