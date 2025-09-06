import 'package:flutter/material.dart';

class CadastroAgricultorPage extends StatelessWidget {
  const CadastroAgricultorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastro Agricultor")),
      body: const Center(child: Text("Formulário para Agricultor")),
    );
  }
}
