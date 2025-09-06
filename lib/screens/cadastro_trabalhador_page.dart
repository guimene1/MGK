import 'package:flutter/material.dart';

class CadastroTrabalhadorPage extends StatelessWidget {
  const CadastroTrabalhadorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastro Trabalhador")),
      body: const Center(child: Text("Formulário para Trabalhador")),
    );
  }
}
