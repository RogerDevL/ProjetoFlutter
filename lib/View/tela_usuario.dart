import 'package:flutter/material.dart';

class TelaUsuario extends StatelessWidget {
  const TelaUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150.0),
          child: Column(
            children: [Icon(Icons.person)],
          ),
        ),
      ),
    );
  }
}
