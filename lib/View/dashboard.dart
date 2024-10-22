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
                      width: double.infinity,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16.0, right: 16.00, top: 10.0),
                              child: Container(
                                child: TextField(
                                  controller: nameController,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Nome',
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16.0, right: 16.00, top: 10.0),
                              child: Container(
                                child: TextField(
                                  controller: emailController,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Email',
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16.0, right: 16.00, top: 10.0),
                              child: Container(
                                child: TextField(
                                  controller: senhaController,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(200, 40)),
                                    onPressed: () {
                                      if (nameController.text.isEmpty ||
                                          emailController.text.isEmpty ||
                                          senhaController.text.isEmpty) {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("Erro"),
                                              content: Text(
                                                  "Por favor,  cadastrar pelo menos 1 usuário!"),
                                              actions: [
                                                TextButton(
                                                  child: Text("OK"),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      } else {
                                        salvaInfo();
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => Telalogin(),
                                          ),
                                        );
                                      }
                                    },
                                    child: Text("Cadastrar"),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 100.0),
                              child: Row(
                                children: [
                                  Text("Já possui uma conta?   "),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Telalogin()),
                                      );
                                    },
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
