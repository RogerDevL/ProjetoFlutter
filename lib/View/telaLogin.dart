import 'package:flutter/material.dart';
import 'package:projeto_flutter/models/cadastro_model.dart';

class Telalogin extends StatelessWidget {
  const Telalogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 208, 222, 233),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 180.0),
                child: Container(
                    child: Icon(
                  Icons.pets,
                  size: 80,
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if(true){}
                //salvaInfo();
              },
              child: Text("Login"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 96.0),
              child: Container(
                  child: Image.asset(
                'assets/images/telaLogin.jpg',
                fit: BoxFit.cover,
                height: 250,
                width: 500,
              )),
            )
          ],
        ),
      ),
    );
  }
}
