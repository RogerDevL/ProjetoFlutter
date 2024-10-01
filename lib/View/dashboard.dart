import 'package:flutter/material.dart';
import 'package:projeto_flutter/View/telaLogin.dart';
import 'package:projeto_flutter/models/cadastro_model.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<CadastroModel> cadastros = [];

    void salvaInfo() {
      cadastros.add(CadastroModel(
          nome: nameController.text,
          email: emailController.text,
          senha: senhaController.text));
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 208, 222, 233),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/download.jpg',
                      fit: BoxFit.cover,
                      height: 550,
                      width: double.infinity,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100.0),
                        child: Column(
                          children: [
                            Text(
                              "Faça",
                              style: TextStyle(
                                  fontSize: 36, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Seu",
                              style: TextStyle(
                                  fontSize: 36, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Cadastro",
                              style: TextStyle(
                                  fontSize: 36, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nome',
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      salvaInfo();
                    },
                    child: Text("Cadastrar"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (cadastros.isNotEmpty) {
                        //Navegar
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Telalogin(),
                          ),
                        );
                      } else {
                        const snackBar = SnackBar(
                          content:
                              Text('Precisa cadastrar pelo menos 1 usuário!'),
                        );

                        // Find the ScaffoldMessenger in the widget tree
                        // and use it to show a SnackBar.
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: Text("Login"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
