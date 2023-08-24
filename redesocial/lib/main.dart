import 'package:flutter/material.dart';
import 'pages/sign.dart';

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
        )
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(
          color: Colors.amber,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30)
        ),
      )
    ),
      home: Scaffold(
        body: RedeSocial(),
      ),
    );
  }
}
  

class RedeSocial extends StatefulWidget {

  @override
  State<RedeSocial> createState() => _RedeSocialState();
}

class _RedeSocialState extends State<RedeSocial> {
  
  @override
  Widget build(BuildContext context) {

    _openSign(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => SignPage(),));
    }
    return  MaterialApp(
        theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purple,
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber),
            foregroundColor: MaterialStatePropertyAll(Colors.black),
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: const TextStyle(
            color: Colors.amber,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30)
          ),
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MO3I Social"),
          elevation: 5,
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
                        Text("Login",style: TextStyle(fontSize: 28,color: Colors.amber),),
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
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    const TextField(
                      decoration: InputDecoration(
                        label: Text("Email"),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const TextField(
                    obscureText: true,
                      decoration: InputDecoration(
                        label: Text("senha"),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(onPressed: (){}, child: const Text("Login"),),
                        const SizedBox(width: 10,),
                        ElevatedButton(onPressed: _openSign, child: const Text("Sigin")),
                      ],
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
