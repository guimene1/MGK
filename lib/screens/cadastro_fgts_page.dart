import 'package:flutter/material.dart';

class CadastroFgtsPage extends StatelessWidget {
  const CadastroFgtsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastro FGTS")),
      body: const Center(child: Text("Formulário para FGTS")),
    );
  }
}